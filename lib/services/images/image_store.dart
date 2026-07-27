import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Content-addressed store for local image blobs.
///
/// Images are written to `<docs>/images/<sha256>` — the filename **is** the
/// SHA-256 of the raw bytes, so identical images collapse onto the same file
/// (natural deduplication) and are never stored twice. The database only ever
/// keeps the hash string (plus an extension in a separate column), never the
/// bytes, which keeps DB snapshots small.
///
/// Bird photos are written here by `addBirdImage` (via `BirdImagePicker`);
/// the backup system uploads/restores the blobs by hash and [gc] reclaims
/// unreferenced ones on startup.
class ImageStore {
  static const _dirName = 'images';

  static Future<Directory> _imagesDir() async {
    final docs = await getApplicationDocumentsDirectory();
    final dir = Directory(p.join(docs.path, _dirName));
    if (!dir.existsSync()) {
      await dir.create(recursive: true);
    }
    return dir;
  }

  static Future<File> _fileFor(String hash) async {
    final dir = await _imagesDir();
    return File(p.join(dir.path, hash));
  }

  /// The SHA-256 of [bytes] as a lowercase hex string.
  static String hashBytes(Uint8List bytes) => sha256.convert(bytes).toString();

  /// Stores [bytes] and returns their content hash.
  ///
  /// Idempotent: if a blob with the same hash already exists it is left
  /// untouched and its hash is returned, so re-storing the same image is a
  /// no-op.
  static Future<String> put(Uint8List bytes) async {
    final hash = hashBytes(bytes);
    final file = await _fileFor(hash);
    if (!file.existsSync()) {
      await file.writeAsBytes(bytes, flush: true);
    }
    return hash;
  }

  /// Returns the blob for [hash], or null if it is not stored locally.
  static Future<File?> get(String hash) async {
    final file = await _fileFor(hash);
    return file.existsSync() ? file : null;
  }

  static Future<bool> exists(String hash) async {
    final file = await _fileFor(hash);
    return file.existsSync();
  }

  /// The hashes of all locally stored blobs.
  static Future<Set<String>> list() async {
    final dir = await _imagesDir();
    return dir
        .listSync()
        .whereType<File>()
        .map((f) => p.basename(f.path))
        .toSet();
  }

  static Future<void> delete(String hash) async {
    final file = await _fileFor(hash);
    if (file.existsSync()) {
      await file.delete();
    }
  }

  /// Deletes stored blobs whose hash is not in [referenced].
  ///
  /// A [grace] window protects freshly written blobs whose referencing
  /// database row may not exist yet (e.g. a capture mid-flight). Returns the
  /// number of blobs deleted.
  static Future<int> gc(
    Set<String> referenced, {
    Duration grace = const Duration(hours: 24),
  }) async {
    final dir = await _imagesDir();
    final now = DateTime.now();
    var deleted = 0;
    for (final file in dir.listSync().whereType<File>()) {
      final hash = p.basename(file.path);
      if (referenced.contains(hash)) continue;
      if (now.difference(file.lastModifiedSync()) < grace) continue;
      await file.delete();
      deleted++;
    }
    return deleted;
  }
}
