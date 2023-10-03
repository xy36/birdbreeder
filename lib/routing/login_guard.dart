import 'package:auto_route/auto_route.dart';

import '../injection.dart';
import '../services/authentication/authentication_status.dart';
import '../services/authentication/i_authentication_service.dart';
import 'app_router.dart';

class LoginGuard extends AutoRouteGuard {
  final _authenticationService = s1.get<IAuthenticationService>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    switch (_authenticationService.authenticationStatus.value) {
      case AuthenticationStatus.unauthenticated:
      case AuthenticationStatus.unknown:
        resolver.next();
        break;
      case AuthenticationStatus.authenticated:
        resolver.next(false);
        router.replaceAll([const HomeRoute()]);
        break;
    }
  }
}
