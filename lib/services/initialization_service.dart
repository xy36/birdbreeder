import 'package:birdbreeder/runtime_app_config.dart';
import 'package:birdbreeder/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitializationService {
  static Future<void> initialize() async {
    await _initializeSharedPreferences();
  }

  /// Initializes the dependency injection
  static Future<void> _initializeSharedPreferences() async {
    // Unregister the RuntimeAppConfig if it is already registered.
    if (GetIt.I.isRegistered<RuntimeAppConfig>()) {
      GetIt.I.unregister<RuntimeAppConfig>();
    }

    if (GetIt.I.isRegistered<SharedPreferences>()) {
      GetIt.I.unregister<SharedPreferences>();
    }

    // Initialize and register shared preferences
    final sharedPreferences = await SharedPreferences.getInstance();
    GetIt.I.registerSingleton<SharedPreferences>(sharedPreferences);

    // Initialize and register runtime app config
    final runtimeAppConfig = RuntimeAppConfig(
      isLanguagePicked: SharedPreferencesService.getLanguagePickedState(),
    );

    GetIt.I.registerSingleton<RuntimeAppConfig>(runtimeAppConfig);
  }
}
