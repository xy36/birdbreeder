import 'package:birdbreeder/features/export/domain/export_value_format.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExportValueFormat.date', () {
    test('formats as dd.MM.yyyy, one of the importer formats', () {
      expect(ExportValueFormat.date(DateTime(2026, 3, 7)), '07.03.2026');
    });

    test('returns null for a missing date', () {
      expect(ExportValueFormat.date(null), isNull);
    });
  });

  group('ExportValueFormat.decimal', () {
    test('uses a decimal comma and two places', () {
      expect(ExportValueFormat.decimal(12.5), '12,50');
    });

    test('omits thousands grouping so the importer can parse it back', () {
      final formatted = ExportValueFormat.decimal(1234.5)!;

      expect(formatted, '1234,50');
      expect(double.tryParse(formatted.replaceAll(',', '.')), 1234.5);
    });

    test('returns null for a missing amount', () {
      expect(ExportValueFormat.decimal(null), isNull);
    });
  });

  group('ExportValueFormat.text', () {
    test('flattens newlines to single spaces', () {
      expect(ExportValueFormat.text('erste\nzweite'), 'erste zweite');
      expect(ExportValueFormat.text('erste\r\n  zweite'), 'erste zweite');
    });

    test('returns null for blank input', () {
      expect(ExportValueFormat.text(null), isNull);
      expect(ExportValueFormat.text('   '), isNull);
    });

    test('keeps umlauts untouched', () {
      expect(ExportValueFormat.text(' Züchter '), 'Züchter');
    });
  });
}
