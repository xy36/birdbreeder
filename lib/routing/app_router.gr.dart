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
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountPage(),
      );
    },
    AddBirdRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddBirdPage(),
      );
    },
    BirdRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BirdRouteArgs>(
          orElse: () => BirdRouteArgs(id: pathParams.optString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BirdPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    BirdsOverviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BirdsOverviewPage(),
      );
    },
    BreedingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BreedingsPage(),
      );
    },
    EditBirdRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditBirdRouteArgs>(
          orElse: () => EditBirdRouteArgs(id: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditBirdPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    FinancesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FinancesPage(),
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
    MenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MenuPage(),
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
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddBirdPage]
class AddBirdRoute extends PageRouteInfo<void> {
  const AddBirdRoute({List<PageRouteInfo>? children})
      : super(
          AddBirdRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBirdRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BirdPage]
class BirdRoute extends PageRouteInfo<BirdRouteArgs> {
  BirdRoute({
    Key? key,
    String? id,
    List<PageRouteInfo>? children,
  }) : super(
          BirdRoute.name,
          args: BirdRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'BirdRoute';

  static const PageInfo<BirdRouteArgs> page = PageInfo<BirdRouteArgs>(name);
}

class BirdRouteArgs {
  const BirdRouteArgs({
    this.key,
    this.id,
  });

  final Key? key;

  final String? id;

  @override
  String toString() {
    return 'BirdRouteArgs{key: $key, id: $id}';
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
/// [BreedingsPage]
class BreedingsRoute extends PageRouteInfo<void> {
  const BreedingsRoute({List<PageRouteInfo>? children})
      : super(
          BreedingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BreedingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditBirdPage]
class EditBirdRoute extends PageRouteInfo<EditBirdRouteArgs> {
  EditBirdRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          EditBirdRoute.name,
          args: EditBirdRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'EditBirdRoute';

  static const PageInfo<EditBirdRouteArgs> page =
      PageInfo<EditBirdRouteArgs>(name);
}

class EditBirdRouteArgs {
  const EditBirdRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'EditBirdRouteArgs{key: $key, id: $id}';
  }
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
/// [FinancesPage]
class FinancesRoute extends PageRouteInfo<void> {
  const FinancesRoute({List<PageRouteInfo>? children})
      : super(
          FinancesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FinancesRoute';

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
/// [MenuPage]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
