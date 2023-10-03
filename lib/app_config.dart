/// Configuration object for the app. Contains all flavor-specific
/// configuration.
class AppConfig {
  /// Constructor
  AppConfig({
    required this.appTitle,
    required this.appFlavor,
  });

  final String appTitle;

  /// The flavor of the app.
  final AppFlavor appFlavor;
}

/// Enum for the flavor of the app.
enum AppFlavor {
  production(flavorName: 'production'),
  development(flavorName: 'development');

  const AppFlavor({required this.flavorName});

  final String flavorName;
}
