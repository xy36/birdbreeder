// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BirdRouteArgs>();
      return BirdPage(
        key: args.key,
        bird: args.bird,
      );
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BirdsOverviewPage();
    },
  );
}

/// generated route for
/// [BreedingsPage]
class BreedingsRoute extends PageRouteInfo<void> {
  const BreedingsRoute({List<PageRouteInfo>? children})
      : super(
          BreedingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BreedingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BreedingsPage();
    },
  );
}

/// generated route for
/// [CagesPage]
class CagesRoute extends PageRouteInfo<void> {
  const CagesRoute({List<PageRouteInfo>? children})
      : super(
          CagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CagesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CagesPage();
    },
  );
}

/// generated route for
/// [ColorsPage]
class ColorsRoute extends PageRouteInfo<void> {
  const ColorsRoute({List<PageRouteInfo>? children})
      : super(
          ColorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ColorsPage();
    },
  );
}

/// generated route for
/// [ContactsPage]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute({List<PageRouteInfo>? children})
      : super(
          ContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ContactsPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EmptyRouterPage();
    },
  );
}

/// generated route for
/// [FinancesPage]
class FinancesRoute extends PageRouteInfo<void> {
  const FinancesRoute({List<PageRouteInfo>? children})
      : super(
          FinancesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FinancesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FinancesPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitializationPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return LoginPage(key: args.key);
    },
  );
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
/// [MenuPage]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MenuPage();
    },
  );
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

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignUpRouteArgs>(orElse: () => const SignUpRouteArgs());
      return SignUpPage(key: args.key);
    },
  );
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SpeciesPage]
class SpeciesRoute extends PageRouteInfo<void> {
  const SpeciesRoute({List<PageRouteInfo>? children})
      : super(
          SpeciesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeciesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpeciesPage();
    },
  );
}
