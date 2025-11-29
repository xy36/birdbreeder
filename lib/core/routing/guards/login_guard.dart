import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';

class LoginGuard extends AutoRouteGuard {
  final IAuthenticationService _authenticationService =
      s1.get<IAuthenticationService>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    switch (_authenticationService.authenticationStatus.value) {
      case AuthenticationStatus.unauthenticated:
      case AuthenticationStatus.unknown:
        print('LoginGuard onNavigation unauthenticated');
        resolver.next();
      case AuthenticationStatus.authenticated:
        print('LoginGuard onNavigation authenticated');
        resolver.next(false);
        router.replaceAll([const MenuRoute()]);
    }
  }
}
