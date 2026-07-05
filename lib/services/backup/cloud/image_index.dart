import 'dart:convert';
import 'dart:typed_data';

/// The set of image hashes known to live in a cloud folder's `images/`
/// directory, persisted as `images/index.json`.
///
/// Reading this single small file replaces an expensive full directory listing
/// when deciding which image blobs still need uploading — important on Android
/// SAF, where per-file `content://` traversal scales poorly.
class ImageIndex {
  const ImageIndex(this.hashes);

  const ImageIndex.empty() : hashes = const {};

  /// Parses an index from JSON bytes, tolerating missing/corrupt input by
  /// returning an empty index (the caller then self-heals from a listing).
  factory ImageIndex.fromBytes(Uint8List? bytes) {
    if (bytes == null || bytes.isEmpty) return const ImageIndex.empty();
    try {
      final decoded = jsonDecode(utf8.decode(bytes));
      if (decoded is! Map) return const ImageIndex.empty();
      final list = decoded['hashes'];
      if (list is! List) return const ImageIndex.empty();
      return ImageIndex(list.whereType<String>().toSet());
    } on Object {
      return const ImageIndex.empty();
    }
  }

  final Set<String> hashes;

  ImageIndex withAll(Set<String> added) => ImageIndex({...hashes, ...added});

  Uint8List toBytes() => Uint8List.fromList(
        utf8.encode(jsonEncode({'hashes': hashes.toList()})),
      );
}
