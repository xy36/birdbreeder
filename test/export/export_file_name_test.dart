import 'package:birdbreeder/features/export/domain/export_file_name.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String clean(String input) =>
      ExportFileName.sanitize(input, fallback: 'bestand_2026-07-29');

  group('suggest', () {
    test('appends the date to the base name', () {
      expect(
        ExportFileName.suggest('bestand', now: DateTime(2026, 7, 29)),
        'bestand_2026-07-29',
      );
    });

    test('carries no extension, since the format can still change', () {
      expect(
        ExportFileName.suggest('bestand', now: DateTime(2026, 7, 29)),
        isNot(contains('.')),
      );
    });
  });

  group('sanitize', () {
    test('keeps an ordinary name untouched', () {
      expect(clean('Bestand Verein 2026'), 'Bestand Verein 2026');
    });

    test('keeps umlauts', () {
      expect(clean('Züchterliste'), 'Züchterliste');
    });

    test('replaces path separators, so no directory can be escaped', () {
      expect(clean('../etc/passwd'), 'etc-passwd');
      expect(clean(r'ordner\datei'), 'ordner-datei');
    });

    test('replaces characters Windows rejects', () {
      expect(clean('a:b"c<d>e|f?g*h'), 'a-b-c-d-e-f-g-h');
    });

    test('strips control characters, which no file system accepts', () {
      expect(clean('bestand\u0000\u001f'), 'bestand');
      // Tab and newline fall in the same range, so they become a separator
      // rather than vanishing — a pasted multi-line string stays readable.
      expect(clean('bestand\tliste'), 'bestand-liste');
      expect(clean('bestand\nliste'), 'bestand-liste');
    });

    test('collapses runs of separators', () {
      expect(clean('bestand___2026'), 'bestand_2026');
      expect(clean('bestand   2026'), 'bestand_2026');
    });

    test('drops leading dots, which would hide the file', () {
      expect(clean('.bestand'), 'bestand');
    });

    test('drops trailing dots, which break the name on Windows', () {
      expect(clean('bestand...'), 'bestand');
    });

    test('falls back when nothing usable is left', () {
      expect(clean(''), 'bestand_2026-07-29');
      expect(clean('   '), 'bestand_2026-07-29');
      expect(clean('...'), 'bestand_2026-07-29');
      expect(clean('/'), 'bestand_2026-07-29');
    });

    test('caps the length without leaving a trailing separator', () {
      final long = clean('a' * 150);

      expect(long, hasLength(ExportFileName.maxLength));
      expect(clean('${'a' * 99}_bbb'), isNot(endsWith('_')));
    });
  });
}
