import 'package:intl/intl.dart';
import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

/// Locale-aware formatter for prices/amounts.
///
/// Displays a double with exactly two decimal places and thousands grouping
/// (e.g. `1234.5` -> `"1.234,50"` for German) and parses such a string back to
/// a double. Use [inputFormatter] to constrain live text entry.
class PriceFormatter {
  PriceFormatter(this.locale)
      : _symbols = numberFormatSymbols[locale],
        _display = NumberFormat('#,##0.00', locale);

  final String locale;
  final NumberSymbols? _symbols;
  final NumberFormat _display;

  String get _group => _symbols?.GROUP_SEP ?? '.';
  String get _decimal => _symbols?.DECIMAL_SEP ?? ',';

  /// Formats [value] with locale grouping and two decimal places.
  String format(double value) => _display.format(value);

  /// Parses a locale-formatted amount back to a double.
  ///
  /// Returns `null` for empty or unparseable input.
  double? parse(String? text) {
    if (text == null || text.trim().isEmpty) return null;
    final normalized =
        text.replaceAll(_group, '').replaceAll(_decimal, '.').trim();
    return double.tryParse(normalized);
  }

  /// Input formatter constraining entry to two decimals + thousands groups.
  NumberTextInputFormatter get inputFormatter => NumberTextInputFormatter(
        decimalDigits: 2,
        groupDigits: 3,
        decimalSeparator: _decimal,
        groupSeparator: _group,
      );
}
