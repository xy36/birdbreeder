//We do not need sentry DSN running on development;
import 'app.dart';
import 'app_config.dart';
import 'bootstrap.dart';
import 'injection.dart';

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

  await bootstrap(App.new);
}
