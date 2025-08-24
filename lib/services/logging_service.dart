import 'package:logger/logger.dart';

class LoggingService {
  LoggingService() {
    _logger = Logger(
      printer: PrettyPrinter(
        colors: false,
        methodCount: 0, // No method count
        errorMethodCount: 5, // Show last 5 error methods
        printEmojis: false,
        excludeBox: {
          Level.debug: true,
          Level.info: true,
        },
      ),
    );
    _logger.i('Logging Service Initialized');
  }

  late Logger _logger;

  Logger get logger => _logger;
}
