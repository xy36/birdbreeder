import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import '../runtime_app_config.dart';

class SharedPreferencesService {
  static final _sharedPreferences = GetIt.I<SharedPreferences>();

  static Future<void> clearLanguagePicked() async {
    await _sharedPreferences.setBool(
      SharedPreferencesKeys.sharedPreferencesLanguagePickedKey,
      false,
    );

    // Update app runtime config
    GetIt.I<RuntimeAppConfig>().isLanguagePicked = false;
  }

  static Future<void> setLanguagePicked() async {
    await _sharedPreferences.setBool(
      SharedPreferencesKeys.sharedPreferencesLanguagePickedKey,
      true,
    );

    // Update app runtime config
    GetIt.I<RuntimeAppConfig>().isLanguagePicked = true;
  }

  static bool getLanguagePickedState() {
    return _sharedPreferences.getBool(
          SharedPreferencesKeys.sharedPreferencesLanguagePickedKey,
        ) ??
        false;
  }
}
