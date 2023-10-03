import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'injection.dart';
import 'routing/app_router.dart';
import 'screen_size.dart';
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
      builder: (context, child) {
        return ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: ScreenSize.getBreakpoints(),
        );
      },
      themeMode: ThemeMode.light,
    );
  }
}
