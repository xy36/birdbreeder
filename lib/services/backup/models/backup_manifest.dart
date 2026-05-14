class BackupManifest {
  BackupManifest({
    required this.format,
    required this.createdAt,
    required this.hasImages,
  });

  factory BackupManifest.fromJson(Map<String, dynamic> json) {
    return BackupManifest(
      format: (json['format'] as num?)?.toInt() ?? 1,
      createdAt: DateTime.tryParse(json['createdAt'] as String? ?? '') ??
          DateTime.now().toUtc(),
      hasImages: json['hasImages'] as bool? ?? false,
    );
  }

  final int format;
  final DateTime createdAt;
  final bool hasImages;

  Map<String, dynamic> toJson() => {
        'format': format,
        'createdAt': createdAt.toIso8601String(),
        'hasImages': hasImages,
      };
}
