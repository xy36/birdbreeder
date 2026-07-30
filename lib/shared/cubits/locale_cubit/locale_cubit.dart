import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/locale/locale_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Holds the user's language choice, where `null` means "follow the system".
///
/// The cubit only drives the picker UI and persistence — the actual rebuild is
/// handled by slang's `TranslationProvider`, which listens to [LocaleSettings].
class LocaleCubit extends Cubit<AppLocale?> {
  LocaleCubit() : super(null) {
    _load();
  }

  Future<void> _load() async {
    final pinned = await LocaleService.load();
    if (pinned != state) emit(pinned);
  }

  /// Pins the app to [locale], or follows the system language when `null`.
  Future<void> setLocale(AppLocale? locale) async {
    if (locale == state) return;
    emit(locale);
    await LocaleService.apply(locale);
    await LocaleService.save(locale);
  }
}
