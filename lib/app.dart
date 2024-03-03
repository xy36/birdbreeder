import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'bootstrap.dart';
import 'injection.dart';
import 'routing/app_router.dart';
import 'services/screen_size.dart';
import 'services/authentication/i_authentication_service.dart';

class App extends StatelessWidget {
  App({
    super.key,
    this.builder,
    this.useInheritedMediaQuery = false,
    this.locale,
  });

  final Widget Function(BuildContext, Widget?)? builder;
  final bool useInheritedMediaQuery;
  final Locale? locale;

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: _appRouter.config(
          reevaluateListenable:
              s1.get<IAuthenticationService>().authenticationStatus,
        ),
        theme: themeData ??
            ThemeData(
              //colorSchemeSeed: Colors.black,

              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
        builder: (context, child) {
          return ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: ScreenSize.getBreakpoints(),
          );
        },
        themeMode: ThemeMode.light,
        localizationsDelegates: [
          ...AppLocalizations.localizationsDelegates,
        ],
        supportedLocales: AppLocalizations.supportedLocales);
  }
}
