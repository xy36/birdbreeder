import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_value_format.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';

/// Every column a finance book can be exported with.
///
/// Amounts stay unsigned; the kind column carries the direction, matching how
/// the app stores and displays bookings. A spreadsheet can therefore total
/// income and expense separately without stripping signs first.
class FinanceExportColumns {
  const FinanceExportColumns._();

  /// Falls back to the creation timestamp, the same rule the overview uses
  /// when a booking carries no explicit date.
  static final date = ExportColumn<Finance>(
    id: 'date',
    label: (t) => t.export.columns.finance.date,
    value: (finance, _) =>
        ExportValueFormat.date(finance.date ?? finance.created),
    width: ExportColumnWidth.compact,
  );

  static final title = ExportColumn<Finance>(
    id: 'title',
    label: (t) => t.export.columns.finance.title,
    value: (finance, _) => ExportValueFormat.text(finance.title),
    width: ExportColumnWidth.wide,
  );

  static final category = ExportColumn<Finance>(
    id: 'category',
    label: (t) => t.export.columns.finance.category,
    value: (finance, _) =>
        ExportValueFormat.text(finance.categoryResolved?.name),
  );

  static final kind = ExportColumn<Finance>(
    id: 'kind',
    label: (t) => t.export.columns.finance.kind,
    value: (finance, t) => switch (finance.categoryResolved?.kind) {
      FinanceCategoryKind.income => t.finances.kind.income,
      FinanceCategoryKind.expense => t.finances.kind.expense,
      null => null,
    },
    width: ExportColumnWidth.compact,
  );

  static final amount = ExportColumn<Finance>(
    id: 'amount',
    label: (t) => t.export.columns.finance.amount,
    value: (finance, _) => ExportValueFormat.decimal(finance.amount),
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final bird = ExportColumn<Finance>(
    id: 'bird',
    label: (t) => t.export.columns.finance.bird,
    value: (finance, _) =>
        ExportValueFormat.text(finance.birdResolved?.ringNumber),
    width: ExportColumnWidth.compact,
  );

  static final notes = ExportColumn<Finance>(
    id: 'notes',
    label: (t) => t.export.columns.finance.notes,
    value: (finance, _) => ExportValueFormat.text(finance.notes),
    width: ExportColumnWidth.wide,
  );

  /// All columns, in the order the "complete" preset renders them.
  static final List<ExportColumn<Finance>> all = [
    date,
    title,
    category,
    kind,
    amount,
    bird,
    notes,
  ];
}

/// The column sets offered when exporting a finance book.
class FinanceExportPresets {
  const FinanceExportPresets._();

  /// The plain ledger.
  static final bookings = ExportPreset<Finance>(
    id: 'bookings',
    label: (t) => t.export.presets.finances.bookings,
    columns: [
      FinanceExportColumns.date,
      FinanceExportColumns.title,
      FinanceExportColumns.category,
      FinanceExportColumns.kind,
      FinanceExportColumns.amount,
    ],
  );

  /// Adds the bird reference and notes, the two things a tax adviser asks
  /// about when a booking looks unclear.
  ///
  /// This is every column a booking has, so there is no separate "complete"
  /// preset here as there is for birds and breeding pairs — a `Finance` simply
  /// carries less than a `Bird`.
  static final full = ExportPreset<Finance>(
    id: 'full',
    label: (t) => t.export.presets.finances.full,
    columns: FinanceExportColumns.all,
  );

  static final List<ExportPreset<Finance>> all = [bookings, full];
}

/// The balance strip printed under a finance PDF.
///
/// Reads the same [FinanceTotals] the overview header uses, so the printed
/// balance always matches the one on screen.
List<({String label, String value})> financeExportSummary(
  List<Finance> rows,
  Translations t,
) =>
    [
      (
        label: t.export.summary.income,
        value: ExportValueFormat.currency(rows.income),
      ),
      (
        label: t.export.summary.expense,
        value: ExportValueFormat.currency(rows.expense),
      ),
      (
        label: t.export.summary.net,
        value: ExportValueFormat.currency(rows.net),
      ),
    ];
