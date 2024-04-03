import 'package:talker_flutter/talker_flutter.dart';

class LoggingService {
  LoggingService() {
    _logger = TalkerFlutter.init();
    _logger.info('Logging Service Initialized');
  }

  late Talker _logger;

  Talker get logger => _logger;
}
