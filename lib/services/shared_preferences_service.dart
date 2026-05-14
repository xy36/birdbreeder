import 'dart:async';

import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/runtime_app_config.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferences _sharedPreferences =
      GetIt.I<SharedPreferences>();

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
