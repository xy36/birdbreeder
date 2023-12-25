// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BirdRoute.name: (routeData) {
      final args = routeData.argsAs<BirdRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BirdPage(
          key: args.key,
          bird: args.bird,
        ),
      );
    },
    BirdsOverviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BirdsOverviewPage(),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    InitializationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InitializationPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(key: args.key),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignUpPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [BirdPage]
class BirdRoute extends PageRouteInfo<BirdRouteArgs> {
  BirdRoute({
    Key? key,
    required Bird? bird,
    List<PageRouteInfo>? children,
  }) : super(
          BirdRoute.name,
          args: BirdRouteArgs(
            key: key,
            bird: bird,
          ),
          initialChildren: children,
        );

  static const String name = 'BirdRoute';

  static const PageInfo<BirdRouteArgs> page = PageInfo<BirdRouteArgs>(name);
}

class BirdRouteArgs {
  const BirdRouteArgs({
    this.key,
    required this.bird,
  });

  final Key? key;

  final Bird? bird;

  @override
  String toString() {
    return 'BirdRouteArgs{key: $key, bird: $bird}';
  }
}

/// generated route for
/// [BirdsOverviewPage]
class BirdsOverviewRoute extends PageRouteInfo<void> {
  const BirdsOverviewRoute({List<PageRouteInfo>? children})
      : super(
          BirdsOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'BirdsOverviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmptyRouterPage]
class EmptyRouterRoute extends PageRouteInfo<void> {
  const EmptyRouterRoute({List<PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InitializationPage]
class InitializationRoute extends PageRouteInfo<void> {
  const InitializationRoute({List<PageRouteInfo>? children})
      : super(
          InitializationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InitializationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<SignUpRouteArgs> page = PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}
