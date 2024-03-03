//We do not need sentry DSN running on development;
import 'package:birdbreeder/app.dart';
import 'package:birdbreeder/app_config.dart';
import 'package:birdbreeder/bootstrap.dart';
import 'package:birdbreeder/injection.dart';

const blankSentryDSN = '';

final appConfig = AppConfig(
  appTitle: '[DEV] Bird Breeder',
  appFlavor: AppFlavor.development,
);

Future<void> main() async {
  // Register the app config as a singleton.
  s1.registerSingleton<AppConfig>(
    appConfig,
  );

  //

  await bootstrap(App.new);
}
