import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/i18n/translations.g.dart';
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
}
