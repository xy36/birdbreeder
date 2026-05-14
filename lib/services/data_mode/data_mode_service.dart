import 'package:birdbreeder/services/data_mode/data_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataModeService {
  static const _key = 'data_mode';

  static DataMode? getModeSync(SharedPreferences prefs) {
    final value = prefs.getString(_key);
    if (value == null) return null;
    return DataMode.values.firstWhere(
      (e) => e.name == value,
      orElse: () => DataMode.remote,
    );
  }

  static Future<void> setMode(SharedPreferences prefs, DataMode mode) async {
    await prefs.setString(_key, mode.name);
  }

  static bool hasChosenMode(SharedPreferences prefs) {
    return prefs.containsKey(_key);
  }
}
