import 'dart:io';

import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:birdbreeder/services/backup/cloud/image_index.dart';
import 'package:saf_stream/saf_stream.dart';
import 'package:saf_util/saf_util.dart';

/// Android backend backed by a user-picked Storage Access Framework folder.
///
/// The user chooses a folder once (their Google Drive, Nextcloud or local
/// folder); the tree URI is persisted with a persistable permission that
/// survives reboots. The provider owning that folder handles the actual cloud
/// sync. Files are laid out as `backups/<name>.bbb.zip` and `images/<hash>`,
/// and the user retains full access through their own file manager.
class SafBackupTarget implements CloudBackupTarget {
  SafBackupTarget({required this.rootUri});

  static const _backupsDir = 'backups';
  static const _imagesDir = 'images';
  static const _indexFileName = 'index.json';
  static const _bundleExt = '.bbb.zip';
  static const _zipMime = 'application/zip';
  static const _jsonMime = 'application/json';
  static const _blobMime = 'application/octet-stream';

  /// Persisted tree URI of the chosen folder, or null if none chosen yet.
  final String? rootUri;

  final _saf = SafUtil();
  final _stream = SafStream();

  /// Sub-directory URIs resolved once per instance (one sync) to avoid a
  /// `mkdirp` tree traversal on every single image operation.
  final _dirCache = <String, String>{};

  @override
  Future<CloudAvailability> availability() async {
    final uri = rootUri;
    if (uri == null) {
      return const CloudAvailability.unavailable(
        CloudUnavailableReason.noLocation,
      );
    }
    final granted = await _saf.hasPersistedPermission(uri, checkWrite: true);
    return granted
        ? const CloudAvailability.available()
        : const CloudAvailability.unavailable(
            CloudUnavailableReason.noLocation,
          );
  }

  @override
  Future<CloudLocation?> chooseLocation() async {
    final dir = await _saf.pickDirectory(
      writePermission: true,
      persistablePermission: true,
    );
    if (dir == null) return null;
    return CloudLocation(
      id: dir.uri,
      displayName: _displayName(dir.uri, dir.name),
    );
  }

  /// Builds a human-readable location label from a SAF tree URI.
  ///
  /// Cloud providers (Google Drive, OneDrive, …) expose only an opaque document
  /// id — there is no real folder path in the URI — so we show
  /// `<Provider> / <folder>` using the picked folder's leaf [leafName]. Only the
  /// device's own `externalstorage` provider encodes a real path
  /// (`primary:Backups/BirdBreeder`), which we show in full.
  static String _displayName(String treeUri, String leafName) {
    final authority = Uri.tryParse(treeUri)?.host ?? '';

    if (authority == 'com.android.externalstorage.documents') {
      final decoded = Uri.decodeFull(treeUri);
      const marker = '/tree/';
      final markerIndex = decoded.indexOf(marker);
      if (markerIndex != -1) {
        final documentId = decoded.substring(markerIndex + marker.length);
        final colon = documentId.indexOf(':');
        final volume = colon >= 0 ? documentId.substring(0, colon) : '';
        final path = colon >= 0 ? documentId.substring(colon + 1) : documentId;
        final volumeLabel = volume == 'primary' ? 'Gerät' : volume;
        return path.isEmpty ? volumeLabel : '$volumeLabel/$path';
      }
    }

    final provider = _providerName(authority);
    return provider == null ? leafName : '$provider / $leafName';
  }

  /// Friendly name for a known SAF DocumentsProvider authority, or null.
  static String? _providerName(String authority) {
    if (authority.contains('google') && authority.contains('docs')) {
      return 'Google Drive';
    }
    if (authority.contains('skydrive') || authority.contains('onedrive')) {
      return 'OneDrive';
    }
    if (authority.contains('dropbox')) return 'Dropbox';
    if (authority.contains('nextcloud') || authority.contains('owncloud')) {
      return 'Nextcloud';
    }
    return null;
  }

  Future<String> _subDirUri(String name) async {
    final cached = _dirCache[name];
    if (cached != null) return cached;
    final dir = await _saf.mkdirp(rootUri!, [name]);
    return _dirCache[name] = dir.uri;
  }

  @override
  Future<void> uploadSnapshot(File local, {required String remoteName}) async {
    final backups = await _subDirUri(_backupsDir);
    await _stream.pasteLocalFile(
      local.path,
      backups,
      remoteName,
      _zipMime,
      overwrite: true,
    );
  }

  @override
  Future<List<CloudEntry>> listSnapshots() async {
    final backups = await _subDirUri(_backupsDir);
    final files = await _saf.list(backups);
    final entries = files
        .where(
          (f) => !f.isDir && f.name.toLowerCase().endsWith(_bundleExt),
        )
        .map(
          (f) => CloudEntry(
            name: f.name,
            size: f.length,
            modifiedAt: DateTime.fromMillisecondsSinceEpoch(f.lastModified),
            remoteRef: f.uri,
          ),
        )
        .toList()
      ..sort((a, b) => b.modifiedAt.compareTo(a.modifiedAt));
    return entries;
  }

  @override
  Future<File> downloadSnapshot(CloudEntry entry, {required File dest}) async {
    if (!dest.parent.existsSync()) {
      await dest.parent.create(recursive: true);
    }
    await _stream.copyToLocalFile(entry.remoteRef, dest.path);
    return dest;
  }

  @override
  Future<Set<String>> listImageHashes() async {
    final images = await _subDirUri(_imagesDir);
    final indexChild = await _saf.child(images, [_indexFileName]);
    if (indexChild != null) {
      final bytes = await _stream.readFileBytes(indexChild.uri);
      return ImageIndex.fromBytes(bytes).hashes;
    }
    // Self-heal: no index yet — rebuild it once from a full listing.
    final files = await _saf.list(images);
    final hashes = files
        .where((f) => !f.isDir && f.name != _indexFileName)
        .map((f) => f.name)
        .toSet();
    await _writeIndex(images, ImageIndex(hashes));
    return hashes;
  }

  @override
  Future<void> recordUploadedImages(Set<String> hashes) async {
    if (hashes.isEmpty) return;
    final images = await _subDirUri(_imagesDir);
    final current = await listImageHashes();
    await _writeIndex(images, ImageIndex(current).withAll(hashes));
  }

  Future<void> _writeIndex(String imagesUri, ImageIndex index) async {
    await _stream.writeFileBytes(
      imagesUri,
      _indexFileName,
      _jsonMime,
      index.toBytes(),
      overwrite: true,
    );
  }

  @override
  Future<void> uploadImage(String hash, File local) async {
    final images = await _subDirUri(_imagesDir);
    await _stream.pasteLocalFile(
      local.path,
      images,
      hash,
      _blobMime,
      overwrite: true,
    );
  }

  @override
  Future<File> downloadImage(String hash, {required File dest}) async {
    final images = await _subDirUri(_imagesDir);
    final child = await _saf.child(images, [hash]);
    if (child == null) {
      throw StateError('Image $hash not found in cloud folder');
    }
    if (!dest.parent.existsSync()) {
      await dest.parent.create(recursive: true);
    }
    await _stream.copyToLocalFile(child.uri, dest.path);
    return dest;
  }
}
