import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/features/export/domain/columns/finance_export_columns.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'seeded_resources.dart';

void main() {
  final translations = AppLocale.de.buildSync();
  const bird = Bird(id: 'v1', ringNumber: 'AB-001');
  const sales = FinanceCategory(
    id: 'kat1',
    name: 'Verkauf',
    color: '#00ff00',
    kind: FinanceCategoryKind.income,
  );
  const feed = FinanceCategory(
    id: 'kat2',
    name: 'Futter',
    color: '#ff0000',
    kind: FinanceCategoryKind.expense,
  );

  final sale = Finance(
    id: 'f1',
    categoryId: sales.id,
    amount: 120,
    title: 'Verkauf Hahn',
    birdId: bird.id,
    date: DateTime(2026, 5, 12),
  );
  const feedBill = Finance(
    id: 'f2',
    categoryId: 'kat2',
    amount: 45.9,
    title: 'Körnermischung',
  );

  /// A booking whose category was deleted — it must not tip either total.
  const orphan = Finance(
    id: 'f3',
    categoryId: 'geloescht',
    amount: 999,
    title: 'Ohne Kategorie',
  );

  String? valueOf(ExportColumn<Finance> column, Finance finance) =>
      column.value(finance, translations);

  setUpAll(() {
    registerSeededResources(
      exportTestResources(
        birds: [bird],
        finances: [sale, feedBill, orphan],
        financeCategories: [sales, feed],
      ),
    );
  });

  tearDownAll(s1.reset);

  group('FinanceTotals', () {
    test('sums each side separately and nets them', () {
      final book = [sale, feedBill];

      expect(book.income, 120);
      expect(book.expense, 45.9);
      expect(book.net, closeTo(74.1, 0.001));
    });

    test('ignores bookings whose category is gone', () {
      expect([orphan].income, 0);
      expect([orphan].expense, 0);
      expect([orphan].net, 0);
    });

    test('is zero for an empty book', () {
      expect(<Finance>[].net, 0);
    });

    test('goes negative when expenses outweigh income', () {
      expect([feedBill].net, -45.9);
    });
  });

  group('FinanceExportColumns', () {
    test('renders date, category and kind', () {
      expect(valueOf(FinanceExportColumns.date, sale), '12.05.2026');
      expect(valueOf(FinanceExportColumns.category, sale), 'Verkauf');
      expect(
        valueOf(FinanceExportColumns.kind, sale),
        translations.finances.kind.income,
      );
      expect(
        valueOf(FinanceExportColumns.kind, feedBill),
        translations.finances.kind.expense,
      );
    });

    test('leaves the kind blank when the category is gone', () {
      expect(valueOf(FinanceExportColumns.kind, orphan), isNull);
    });

    test('writes amounts unsigned with a decimal comma', () {
      expect(valueOf(FinanceExportColumns.amount, feedBill), '45,90');
    });

    test('resolves the linked bird by ring number', () {
      expect(valueOf(FinanceExportColumns.bird, sale), 'AB-001');
      expect(valueOf(FinanceExportColumns.bird, feedBill), isNull);
    });

    test('leaves the date blank when neither date nor created is set', () {
      expect(valueOf(FinanceExportColumns.date, feedBill), isNull);
    });
  });

  group('financeExportSummary', () {
    test('states income, expense and balance as currency', () {
      final strip = financeExportSummary([sale, feedBill], translations);

      expect(strip.map((e) => e.label), [
        translations.export.summary.income,
        translations.export.summary.expense,
        translations.export.summary.net,
      ]);
      expect(strip[0].value, contains('120,00'));
      expect(strip[1].value, contains('45,90'));
      expect(strip[2].value, contains('74,10'));
    });

    test('marks a negative balance', () {
      final strip = financeExportSummary([feedBill], translations);

      expect(strip.last.value, startsWith('-'));
    });
  });
}
