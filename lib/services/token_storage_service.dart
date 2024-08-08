import 'package:birdbreeder/services/logging_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenStorageService {
  TokenStorageService(this._sharedPreferences, this._loggingService);

  String get key => 'token';

  final SharedPreferences _sharedPreferences;
  final LoggingService _loggingService;

  Future<void> setToken(String token) async {
    _loggingService.logger.info('TokenStorageService.setToken: $token');

    await _sharedPreferences.setString(
      key,
      token,
    );
  }

  Future<void> deleteToken() async {
    _loggingService.logger.info('TokenStorageService.deleteToken');
    await _sharedPreferences.remove(key);
  }

  Future<String?> getToken() async {
    final token = _sharedPreferences.getString(key);

    _loggingService.logger.info('TokenStorageService.getToken: $token');

    return token;
  }
}
