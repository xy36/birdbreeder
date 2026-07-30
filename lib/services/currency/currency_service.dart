import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persists the currency all monetary amounts are displayed in.
///
/// The app stores amounts as plain numbers with no currency attached, so this
/// is a display setting: switching it relabels existing values rather than
/// converting them.
class CurrencyService {
  static const _key = 'app_currency';

  /// Used when the device locale maps to something unsupported.
  static const fallback = 'EUR';

  /// ISO 4217 codes offered in the picker.
  ///
  /// Covers the euro zone the app is built for plus the currencies of the
  /// neighbouring and overseas markets its languages reach.
  static const List<String> supported = [
    'EUR',
    'CHF',
    'GBP',
    'USD',
    'SEK',
    'NOK',
    'DKK',
    'PLN',
    'CZK',
    'HUF',
    'RON',
    'BGN',
    'TRY',
    'BRL',
    'MXN',
    'ARS',
    'CAD',
    'AUD',
    'ZAR',
    'JPY',
  ];

  /// Reads the stored currency, falling back to the device's own.
  static Future<String> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw != null && supported.contains(raw)) return raw;
    return deviceDefault();
  }

  /// Stores [code].
  static Future<void> save(String code) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, code);
  }

  /// The currency of the device's region, when the app supports it.
  ///
  /// Reads the full platform locale rather than the app's language, because
  /// only the region carries currency information — `de_CH` means francs even
  /// though the app renders in German.
  static String deviceDefault() {
    try {
      final code = NumberFormat.simpleCurrency(
        locale: PlatformDispatcher.instance.locale.toString(),
      ).currencyName;
      if (code != null && supported.contains(code)) return code;
    } on Object {
      // Unknown locale — intl throws rather than guessing. So do we.
    }
    return fallback;
  }
}
