import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';

class AuthGuard extends AutoRouteGuard {
  final IAuthenticationService _authenticationService =
      s1.get<IAuthenticationService>();

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    switch (_authenticationService.authenticationStatus.value) {
      case AuthenticationStatus.authenticated:
        resolver.next();
      case AuthenticationStatus.unauthenticated:
      case AuthenticationStatus.unknown:
        resolver.next(false);
        await router.replaceAll([const AuthRoute()]);
    }
  }
}
