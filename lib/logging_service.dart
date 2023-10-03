import 'package:logger/logger.dart';

class LoggingService {
  LoggingService() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        excludeBox: {Level.debug: true, Level.info: true},
        printEmojis: false,
      ),
    );

    _logger.d('Logging Service Initialized');
  }

  late Logger _logger;

  Logger get logger => _logger;
}
