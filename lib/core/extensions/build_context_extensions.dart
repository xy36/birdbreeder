import 'package:birdbreeder/i18n/translations.g.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

extension BuildContextExtension on BuildContext {
  /// Returns the format of the current locale.
  DateFormat getDateFormat() {
    return DateFormat.yMd(Localizations.localeOf(this).languageCode);
  }

  Translations get tr => Translations.of(this);
}
