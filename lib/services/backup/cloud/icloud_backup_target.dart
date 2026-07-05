import 'dart:async';
import 'dart:io';

import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:icloud_storage/icloud_storage.dart';
import 'package:path/path.dart' as p;

/// iOS backend backed by the app's iCloud Drive ubiquity container.
///
/// Files are laid out under the container as `backups/<name>.bbb.zip` and
/// `images/<hash>`. The iCloud daemon syncs them automatically and — with
/// `NSUbiquitousContainerIsDocumentScopePublic` — they appear in the Files app
/// under the app's folder, so the user has full access. No login flow: access
/// depends on the device being signed into iCloud, surfaced via [availability].
class ICloudBackupTarget implements CloudBackupTarget {
  const ICloudBackupTarget({this.containerId = _defaultContainerId});

  static const _defaultContainerId = 'iCloud.com.xy36.birdbreeder';
  static const _backupsPrefix = 'backups/';
  static const _imagesPrefix = 'images/';
  static const _bundleExt = '.bbb.zip';

  final String containerId;

  @override
  Future<CloudAvailability> availability() async {
    try {
      await ICloudStorage.gather(containerId: containerId);
      return const CloudAvailability.available();
    } on Object {
      // Container URL is nil when the user isn't signed into iCloud Drive.
      return const CloudAvailability.unavailable(
        CloudUnavailableReason.notSignedIn,
      );
    }
  }

  @override
  Future<CloudLocation?> chooseLocation() async {
    final status = await availability();
    if (!status.available) return null;
    return const CloudLocation(
      id: _defaultContainerId,
      displayName: 'iCloud Drive / BirdBreeder',
    );
  }

  @override
  Future<void> uploadSnapshot(File local, {required String remoteName}) async {
    await ICloudStorage.upload(
      containerId: containerId,
      filePath: local.path,
      destinationRelativePath: '$_backupsPrefix$remoteName',
    );
  }

  @override
  Future<List<CloudEntry>> listSnapshots() async {
    final files = await ICloudStorage.gather(containerId: containerId);
    final entries = files
        .where(
          (f) =>
              f.relativePath.startsWith(_backupsPrefix) &&
              f.relativePath.toLowerCase().endsWith(_bundleExt),
        )
        .map(
          (f) => CloudEntry(
            name: p.basename(f.relativePath),
            size: f.sizeInBytes,
            modifiedAt: f.contentChangeDate,
            remoteRef: f.relativePath,
          ),
        )
        .toList()
      ..sort((a, b) => b.modifiedAt.compareTo(a.modifiedAt));
    return entries;
  }

  @override
  Future<File> downloadSnapshot(CloudEntry entry, {required File dest}) =>
      _download(entry.remoteRef, dest);

  @override
  Future<Set<String>> listImageHashes() async {
    final files = await ICloudStorage.gather(containerId: containerId);
    return files
        .where((f) => f.relativePath.startsWith(_imagesPrefix))
        .map((f) => p.basename(f.relativePath))
        .toSet();
  }

  @override
  Future<void> recordUploadedImages(Set<String> hashes) async {
    // No-op: gather() already lists the container in one call, so no separate
    // index is needed on iCloud.
  }

  @override
  Future<void> uploadImage(String hash, File local) async {
    await ICloudStorage.upload(
      containerId: containerId,
      filePath: local.path,
      destinationRelativePath: '$_imagesPrefix$hash',
    );
  }

  @override
  Future<File> downloadImage(String hash, {required File dest}) =>
      _download('$_imagesPrefix$hash', dest);

  /// Initiates a coordinated iCloud download and waits for it to finish.
  ///
  /// The plugin's [ICloudStorage.download] returns before the file lands, so we
  /// hold the future open until the progress stream closes, then confirm the
  /// destination exists.
  Future<File> _download(String relativePath, File dest) async {
    if (!dest.parent.existsSync()) {
      await dest.parent.create(recursive: true);
    }
    final completer = Completer<void>();
    await ICloudStorage.download(
      containerId: containerId,
      relativePath: relativePath,
      destinationFilePath: dest.path,
      onProgress: (stream) {
        stream.listen(
          null,
          onDone: () {
            if (!completer.isCompleted) completer.complete();
          },
          onError: (Object e) {
            if (!completer.isCompleted) completer.completeError(e);
          },
          cancelOnError: true,
        );
      },
    );
    await completer.future;
    if (!dest.existsSync()) {
      throw StateError('iCloud download did not produce $relativePath');
    }
    return dest;
  }
}
