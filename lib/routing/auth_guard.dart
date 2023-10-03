import 'package:auto_route/auto_route.dart';

import '../injection.dart';
import '../services/authentication/authentication_status.dart';
import '../services/authentication/i_authentication_service.dart';
import 'app_router.dart';

class AuthGuard extends AutoRouteGuard {
  final _authenticationService = s1.get<IAuthenticationService>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    switch (_authenticationService.authenticationStatus.value) {
      case AuthenticationStatus.authenticated:
        resolver.next();
        break;
      case AuthenticationStatus.unauthenticated:
        resolver.next(false);
        router.replaceAll([LoginRoute()]);
        break;
      case AuthenticationStatus.unknown:
        resolver.next(false);
        router.replaceAll([LoginRoute()]);
        break;
    }
  }
}
