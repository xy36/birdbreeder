/// How images are carried by a backup bundle.
enum ImageMode {
  /// No images referenced.
  none,

  /// Image blobs are embedded inside the `.bbb.zip` under `images/`.
  ///
  /// Used for locally shared bundles so a single file is self-contained.
  embedded,

  /// The bundle is image-free; blobs are referenced by hash and resolved
  /// elsewhere — the device's content-addressed image store, or the cloud
  /// folder's `images/<hash>` objects (uploaded incrementally). This keeps
  /// every snapshot small instead of duplicating all images into each file.
  external;

  static ImageMode fromName(String? name) => ImageMode.values.firstWhere(
        (m) => m.name == name,
        orElse: () => ImageMode.none,
      );
}

/// Metadata stored as `manifest.json` inside a backup bundle.
class BackupManifest {
  BackupManifest({
    required this.format,
    required this.createdAt,
    required this.hasImages,
    this.imageHashes = const [],
    this.imageMode = ImageMode.none,
  });

  factory BackupManifest.fromJson(Map<String, dynamic> json) {
    return BackupManifest(
      format: (json['format'] as num?)?.toInt() ?? 1,
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? '') ??
          DateTime.now().toUtc(),
      hasImages: json['hasImages'] as bool? ?? false,
      imageHashes:
          (json['imageHashes'] as List?)?.cast<String>() ?? const <String>[],
      imageMode: ImageMode.fromName(json['imageMode'] as String?),
    );
  }

  final int format;
  final DateTime createdAt;
  final bool hasImages;

  /// Content hashes of the images this backup references.
  final List<String> imageHashes;

  /// Where the referenced image blobs live for this bundle.
  final ImageMode imageMode;

  Map<String, dynamic> toJson() => {
        'format': format,
        'createdAt': createdAt.toIso8601String(),
        'hasImages': hasImages,
        'imageHashes': imageHashes,
        'imageMode': imageMode.name,
      };
}
