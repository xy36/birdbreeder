import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:collection/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Cardinal rules for languages slang ships no built-in resolver for.
///
/// Dutch behaves like German and English: singular for exactly one, plural
/// otherwise. Without an entry here slang logs an error on every plural lookup
/// and falls back to a generic resolver.
const Map<String, PluralResolver> _customCardinalResolvers = {
  'nl': _oneOtherCardinal,
};

String _oneOtherCardinal(
  num n, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) {
  if (n == 0 && zero != null) return zero;
  if (n == 1) return one ?? other!;
  return other!;
}

String _otherOrdinal(
  num n, {
  String? zero,
  String? one,
  String? two,
  String? few,
  String? many,
  String? other,
}) =>
    other!;

/// Persists the user's language choice and applies it to [LocaleSettings].
///
/// A `null` value means "follow the system language". Any other value pins the
/// app to that locale regardless of the device setting.
class LocaleService {
  static const _key = 'app_locale';

  /// Reads the pinned locale, or `null` when the system language should win.
  ///
  /// Returns `null` for a stored tag that no longer maps to a shipped locale,
  /// so removing a translation file degrades to the system language instead of
  /// throwing.
  static Future<AppLocale?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_key);
    if (raw == null) return null;
    return AppLocale.values.firstWhereOrNull((l) => l.languageTag == raw);
  }

  /// Stores [locale], or clears the pin when it is `null`.
  static Future<void> save(AppLocale? locale) async {
    final prefs = await SharedPreferences.getInstance();
    if (locale == null) {
      await prefs.remove(_key);
      return;
    }
    await prefs.setString(_key, locale.languageTag);
  }

  /// Applies the persisted choice, falling back to the device language.
  ///
  /// Call once during bootstrap, before the first frame.
  static Future<void> applyPersisted() async {
    final pinned = await load();
    await apply(pinned);
  }

  /// Switches to [locale], or follows the device language when `null`.
  ///
  /// Installs the plural resolver for the target locale first: rebuilding a
  /// translation instance does not notify the provider, so doing it afterwards
  /// would leave the first frame on the generic resolver.
  static Future<void> apply(AppLocale? locale) async {
    final target = locale ?? AppLocaleUtils.findDeviceLocale();
    await _ensurePluralResolver(target);
    if (locale == null) {
      await LocaleSettings.useDeviceLocale();
      return;
    }
    await LocaleSettings.setLocale(locale);
  }

  /// Registers a custom plural resolver for [locale] when slang lacks one.
  ///
  /// No-op for the locales slang already covers, so their translations stay
  /// lazily loaded.
  static Future<void> _ensurePluralResolver(AppLocale locale) async {
    final cardinalResolver = _customCardinalResolvers[locale.languageCode];
    if (cardinalResolver == null) return;
    await LocaleSettings.setPluralResolver(
      locale: locale,
      cardinalResolver: cardinalResolver,
      ordinalResolver: _otherOrdinal,
    );
  }
}
