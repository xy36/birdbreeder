import 'package:birdbreeder/services/backup/models/backup_manifest.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BackupManifest', () {
    test('v2 round-trips through JSON', () {
      final manifest = BackupManifest(
        format: 2,
        createdAt: DateTime.utc(2026, 7, 4, 8, 15),
        hasImages: true,
        imageHashes: const ['aaa', 'bbb'],
        imageMode: ImageMode.external,
      );

      final decoded = BackupManifest.fromJson(manifest.toJson());

      expect(decoded.format, 2);
      expect(decoded.createdAt, manifest.createdAt);
      expect(decoded.hasImages, isTrue);
      expect(decoded.imageHashes, ['aaa', 'bbb']);
      expect(decoded.imageMode, ImageMode.external);
    });

    test('decodes a v1 manifest with image defaults (backward compat)', () {
      final decoded = BackupManifest.fromJson({
        'format': 1,
        'createdAt': '2025-01-01T00:00:00.000Z',
        'hasImages': false,
      });

      expect(decoded.format, 1);
      expect(decoded.hasImages, isFalse);
      expect(decoded.imageHashes, isEmpty);
      expect(decoded.imageMode, ImageMode.none);
    });

    test('unknown imageMode falls back to none', () {
      final decoded = BackupManifest.fromJson({
        'format': 2,
        'createdAt': '2025-01-01T00:00:00.000Z',
        'hasImages': false,
        'imageMode': 'bogus',
      });

      expect(decoded.imageMode, ImageMode.none);
    });
  });
}
