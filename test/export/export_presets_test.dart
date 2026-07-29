import 'package:birdbreeder/features/export/domain/columns/bird_export_columns.dart';
import 'package:birdbreeder/features/export/domain/columns/breeding_pair_export_columns.dart';
import 'package:birdbreeder/features/export/domain/columns/finance_export_columns.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:flutter_test/flutter_test.dart';

/// Checks that hold for every registry, whatever it exports.
///
/// Two presets with identical columns are a bug the compiler cannot catch:
/// the sheet then offers the same file twice under different names, which is
/// exactly what happened to the finance book.
void main() {
  final translations = AppLocale.de.buildSync();

  void checkRegistry<T>(
    String name,
    List<ExportPreset<T>> presets,
    List<ExportColumn<T>> allColumns,
  ) {
    group(name, () {
      test('no two presets carry the same columns', () {
        final signatures = <String, String>{};
        for (final preset in presets) {
          final signature = preset.columns.map((c) => c.id).join(',');
          expect(
            signatures,
            isNot(contains(signature)),
            reason: '"${preset.label(translations)}" duplicates '
                '"${signatures[signature]}"',
          );
          signatures[signature] = preset.label(translations);
        }
      });

      test('preset ids are unique', () {
        final ids = presets.map((preset) => preset.id).toList();

        expect(ids.toSet(), hasLength(ids.length));
      });

      test('column ids are unique, since they become CSV headers', () {
        final ids = allColumns.map((column) => column.id).toList();

        expect(ids.toSet(), hasLength(ids.length));
      });

      test('every preset draws only from the registry', () {
        for (final preset in presets) {
          for (final column in preset.columns) {
            expect(allColumns, contains(column));
          }
        }
      });

      test('every column has a non-empty label', () {
        for (final column in allColumns) {
          expect(column.label(translations), isNotEmpty, reason: column.id);
        }
      });

      test('free-text columns claim extra width', () {
        // These hold whatever the breeder typed and have no natural upper
        // bound; at standard width the PDF table squeezes everything else.
        const freeText = {'notes', 'title'};

        for (final column in allColumns.where((c) => freeText.contains(c.id))) {
          expect(
            column.width,
            ExportColumnWidth.wide,
            reason: column.id,
          );
        }
      });

      test('date and amount columns stay compact', () {
        for (final column in allColumns) {
          final isDateOrAmount = column.id.endsWith('_at') ||
              column.id.endsWith('price') ||
              column.id == 'amount' ||
              column.id == 'date';
          if (!isDateOrAmount) continue;

          expect(column.width, ExportColumnWidth.compact, reason: column.id);
        }
      });
    });
  }

  checkRegistry('birds', BirdExportPresets.all, BirdExportColumns.all);
  checkRegistry(
    'breeding pairs',
    BreedingPairExportPresets.all,
    BreedingPairExportColumns.all,
  );
  checkRegistry('finances', FinanceExportPresets.all, FinanceExportColumns.all);
}
