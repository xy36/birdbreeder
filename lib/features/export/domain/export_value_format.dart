import 'package:intl/intl.dart';

/// Formatting rules shared by every export column.
///
/// These are deliberately locale-independent constants rather than the app's
/// context-aware `toDateFormat`: an exported file is a contract with the CSV
/// importer and with Excel, so the shapes must not drift with device settings.
class ExportValueFormat {
  const ExportValueFormat._();

  /// `dd.MM.yyyy` — one of the three formats `CsvBirdRow.fromCsvMap` parses,
  /// and the format German spreadsheet software recognises as a date.
  static final DateFormat _date = DateFormat('dd.MM.yyyy');

  static String? date(DateTime? value) {
    if (value == null) return null;
    return _date.format(value);
  }

  /// A plain decimal with a comma separator and **no** thousands grouping.
  ///
  /// Grouping would produce `1.234,50`, which the importer turns into
  /// `1.234.50` when it swaps comma for dot — no longer parseable. Currency
  /// symbols are omitted so Excel treats the cell as a number.
  static String? decimal(double? value) {
    if (value == null) return null;
    return value.toStringAsFixed(2).replaceAll('.', ',');
  }

  // Note: there is deliberately no currency helper here. The PDF summary is
  // the one export surface meant for human eyes, so it follows the user's
  // display currency via [MoneyFormatter] — see [financeExportSummary]. CSV
  // cells stay symbol-free ([decimal]) so Excel treats them as numbers.

  /// Trims [value] and flattens newlines, returning null for blanks.
  ///
  /// A raw newline inside a quoted CSV field is legal but trips up naive
  /// parsers, including the app's own import preview.
  static String? text(String? value) {
    final trimmed = value?.replaceAll(RegExp(r'\s*[\r\n]+\s*'), ' ').trim();
    return (trimmed == null || trimmed.isEmpty) ? null : trimmed;
  }
}
