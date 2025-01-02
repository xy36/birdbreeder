import 'package:logger/logger.dart';

class LoggingService {
  LoggingService() {
    _logger = Logger();
    _logger.i('Logging Service Initialized');
  }

  late Logger _logger;

  Logger get logger => _logger;
}
