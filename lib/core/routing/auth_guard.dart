import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';

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
        router.replaceAll([const AuthRoute()]);
        break;
      case AuthenticationStatus.unknown:
        resolver.next(false);
        router.replaceAll([const AuthRoute()]);
        break;
    }
  }
}
