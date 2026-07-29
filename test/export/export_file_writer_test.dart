import 'package:birdbreeder/features/export/data/export_file_writer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  group('ExportFileWriter.wasShared', () {
    test('is false when the user backs out of the share sheet', () {
      const dismissed = ShareResult('', ShareResultStatus.dismissed);

      expect(ExportFileWriter.wasShared(dismissed), isFalse);
    });

    test('is true when a target was picked', () {
      const success = ShareResult('com.example.app', ShareResultStatus.success);

      expect(ExportFileWriter.wasShared(success), isTrue);
    });

    test('is true when the platform cannot report the outcome', () {
      expect(ExportFileWriter.wasShared(ShareResult.unavailable), isTrue);
    });
  });
}
