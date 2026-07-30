import 'package:intl/intl.dart';

/// Formats monetary amounts in the user's currency and UI locale.
///
/// Grouping, decimal separator and symbol placement come from the locale, the
/// symbol itself from the currency — so a German user on EUR sees
/// `1.234,50 €` while an English one on USD sees `$1,234.50`.
class MoneyFormatter {
  MoneyFormatter({required String locale, required this.currencyCode})
      : _withDecimals = NumberFormat.simpleCurrency(
          locale: locale,
          name: currencyCode,
        ),
        _whole = NumberFormat.simpleCurrency(
          locale: locale,
          name: currencyCode,
          decimalDigits: 0,
        ),
        _plain = NumberFormat.decimalPatternDigits(
          locale: locale,
          decimalDigits: 2,
        ),
        _plainWhole = NumberFormat.decimalPatternDigits(
          locale: locale,
          decimalDigits: 0,
        );

  /// ISO 4217 code, e.g. `EUR`.
  final String currencyCode;

  final NumberFormat _withDecimals;
  final NumberFormat _whole;
  final NumberFormat _plain;
  final NumberFormat _plainWhole;

  /// The symbol the current locale uses for [currencyCode], e.g. `€`.
  ///
  /// Use for input-field suffixes, where the amount is typed without one.
  String get symbol => _withDecimals.currencySymbol;

  /// Formats [value] without a currency symbol, but with locale grouping.
  ///
  /// For layouts that render the symbol as a separate, differently styled
  /// element — pair it with [symbol].
  String amount(double value, {bool decimals = true}) =>
      (decimals ? _plain : _plainWhole).format(value);

  /// Formats [value], rounding to whole units when [decimals] is false.
  ///
  /// Negative amounts keep the locale's own minus sign; use [signed] when the
  /// sign should always be visible.
  String format(double value, {bool decimals = true}) =>
      (decimals ? _withDecimals : _whole).format(value);

  /// Formats the magnitude of [value] behind an explicit `+` or `−`.
  ///
  /// Uses the typographic minus (U+2212) rather than a hyphen so the sign lines
  /// up with the plus in monospaced balance columns.
  String signed(double value, {bool decimals = true}) =>
      '${value < 0 ? '−' : '+'}${format(value.abs(), decimals: decimals)}';

  /// Formats the magnitude of [value] behind a caller-chosen [sign].
  ///
  /// For amounts whose direction comes from their category rather than from
  /// the number itself, which is always stored positive.
  String withSign(String sign, double value, {bool decimals = true}) =>
      '$sign${format(value.abs(), decimals: decimals)}';
}
