import 'package:birdbreeder/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension NullableDateFormatExtension on DateTime? {
  String toDateFormat(BuildContext context, [String replacement = '']) {
    if (this != null) {
      return this!.toDateFormat(context);
    }

    return replacement;
  }

  String toTimeFormat(BuildContext context, [String replacement = '']) {
    if (this != null) {
      return this!.toTimeFormat(context);
    }

    return replacement;
  }
}

extension DateFormatExtension on DateTime {
  /// Returns a string representation the date of this [DateTime] instance formatted
  /// according to the current locale.
  String toDateFormat(BuildContext context) {
    return context.getDateFormat().format(this);
  }
}

extension TimeFormatExtension on DateTime {
  /// Returns a string representation the time of this [DateTime] instance formatted
  /// according to the current locale.
  String toTimeFormat(BuildContext context) {
    return DateFormat.Hm(Localizations.localeOf(context).languageCode)
        .format(this);
  }
}
