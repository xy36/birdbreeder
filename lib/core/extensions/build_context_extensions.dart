import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/shared/cubits/currency_cubit/currency_cubit.dart';
import 'package:birdbreeder/shared/utils/formatter/money_formatter.dart';
import 'package:intl/intl.dart';

extension BuildContextExtension on BuildContext {
  /// Returns the format of the current locale.
  DateFormat getDateFormat() {
    return DateFormat.yMd(Localizations.localeOf(this).languageCode);
  }

  String formatDate(DateTime? date) {
    if (date == null) return '—';
    return MaterialLocalizations.of(this).formatShortDate(date);
  }

  Translations get tr => Translations.of(this);

  /// Formatter for monetary amounts in the active locale and currency.
  ///
  /// Watches [CurrencyCubit], so widgets reading this rebuild when the user
  /// picks a different currency.
  MoneyFormatter get money => MoneyFormatter(
        locale: Localizations.localeOf(this).languageCode,
        currencyCode: watch<CurrencyCubit>().state,
      );
}
