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
/// [BreedingPairDetailsPage]
class BreedingPairDetailsRoute
    extends PageRouteInfo<BreedingPairDetailsRouteArgs> {
  BreedingPairDetailsRoute({
    Key? key,
    required String breedingPairId,
    List<PageRouteInfo>? children,
  }) : super(
          BreedingPairDetailsRoute.name,
          args: BreedingPairDetailsRouteArgs(
            key: key,
            breedingPairId: breedingPairId,
          ),
          initialChildren: children,
        );

  static const String name = 'BreedingPairDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BreedingPairDetailsRouteArgs>();
      return BreedingPairDetailsPage(
        key: args.key,
        breedingPairId: args.breedingPairId,
      );
    },
  );
}

class BreedingPairDetailsRouteArgs {
  const BreedingPairDetailsRouteArgs({
    this.key,
    required this.breedingPairId,
  });

  final Key? key;

  final String breedingPairId;

  @override
  String toString() {
    return 'BreedingPairDetailsRouteArgs{key: $key, breedingPairId: $breedingPairId}';
  }
}

/// generated route for
/// [BreedingPairEditPage]
class BreedingPairEditRoute extends PageRouteInfo<BreedingPairEditRouteArgs> {
  BreedingPairEditRoute({
    Key? key,
    BreedingPair? initialBreedingPair,
    List<PageRouteInfo>? children,
  }) : super(
          BreedingPairEditRoute.name,
          args: BreedingPairEditRouteArgs(
            key: key,
            initialBreedingPair: initialBreedingPair,
          ),
          initialChildren: children,
        );

  static const String name = 'BreedingPairEditRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BreedingPairEditRouteArgs>(
          orElse: () => const BreedingPairEditRouteArgs());
      return BreedingPairEditPage(
        key: args.key,
        initialBreedingPair: args.initialBreedingPair,
      );
    },
  );
}

class BreedingPairEditRouteArgs {
  const BreedingPairEditRouteArgs({
    this.key,
    this.initialBreedingPair,
  });

  final Key? key;

  final BreedingPair? initialBreedingPair;

  @override
  String toString() {
    return 'BreedingPairEditRouteArgs{key: $key, initialBreedingPair: $initialBreedingPair}';
  }
}

/// generated route for
/// [BreedingPairsPage]
class BreedingPairsRoute extends PageRouteInfo<void> {
  const BreedingPairsRoute({List<PageRouteInfo>? children})
      : super(
          BreedingPairsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BreedingPairsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BreedingPairsPage();
    },
  );
}

/// generated route for
/// [BroodPage]
class BroodRoute extends PageRouteInfo<BroodRouteArgs> {
  BroodRoute({
    Key? key,
    required String broodId,
    List<PageRouteInfo>? children,
  }) : super(
          BroodRoute.name,
          args: BroodRouteArgs(
            key: key,
            broodId: broodId,
          ),
          initialChildren: children,
        );

  static const String name = 'BroodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BroodRouteArgs>();
      return BroodPage(
        key: args.key,
        broodId: args.broodId,
      );
    },
  );
}

class BroodRouteArgs {
  const BroodRouteArgs({
    this.key,
    required this.broodId,
  });

  final Key? key;

  final String broodId;

  @override
  String toString() {
    return 'BroodRouteArgs{key: $key, broodId: $broodId}';
  }
}

/// generated route for
/// [CageDetailsPage]
class CageDetailsRoute extends PageRouteInfo<CageDetailsRouteArgs> {
  CageDetailsRoute({
    Key? key,
    Cage? initialCage,
    List<PageRouteInfo>? children,
  }) : super(
          CageDetailsRoute.name,
          args: CageDetailsRouteArgs(
            key: key,
            initialCage: initialCage,
          ),
          initialChildren: children,
        );

  static const String name = 'CageDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CageDetailsRouteArgs>(
          orElse: () => const CageDetailsRouteArgs());
      return CageDetailsPage(
        key: args.key,
        initialCage: args.initialCage,
      );
    },
  );
}

class CageDetailsRouteArgs {
  const CageDetailsRouteArgs({
    this.key,
    this.initialCage,
  });

  final Key? key;

  final Cage? initialCage;

  @override
  String toString() {
    return 'CageDetailsRouteArgs{key: $key, initialCage: $initialCage}';
  }
}

/// generated route for
/// [CagesTab]
class CagesTabRoute extends PageRouteInfo<void> {
  const CagesTabRoute({List<PageRouteInfo>? children})
      : super(
          CagesTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'CagesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CagesTab();
    },
  );
}

/// generated route for
/// [ColorDetailsPage]
class ColorDetailsRoute extends PageRouteInfo<ColorDetailsRouteArgs> {
  ColorDetailsRoute({
    Key? key,
    BirdColor? initialColor,
    List<PageRouteInfo>? children,
  }) : super(
          ColorDetailsRoute.name,
          args: ColorDetailsRouteArgs(
            key: key,
            initialColor: initialColor,
          ),
          initialChildren: children,
        );

  static const String name = 'ColorDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ColorDetailsRouteArgs>(
          orElse: () => const ColorDetailsRouteArgs());
      return ColorDetailsPage(
        key: args.key,
        initialColor: args.initialColor,
      );
    },
  );
}

class ColorDetailsRouteArgs {
  const ColorDetailsRouteArgs({
    this.key,
    this.initialColor,
  });

  final Key? key;

  final BirdColor? initialColor;

  @override
  String toString() {
    return 'ColorDetailsRouteArgs{key: $key, initialColor: $initialColor}';
  }
}

/// generated route for
/// [ColorsTab]
class ColorsTabRoute extends PageRouteInfo<void> {
  const ColorsTabRoute({List<PageRouteInfo>? children})
      : super(
          ColorsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ColorsTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ColorsTab();
    },
  );
}

/// generated route for
/// [ContactDetailsPage]
class ContactDetailsRoute extends PageRouteInfo<ContactDetailsRouteArgs> {
  ContactDetailsRoute({
    Key? key,
    Contact? initialContact,
    List<PageRouteInfo>? children,
  }) : super(
          ContactDetailsRoute.name,
          args: ContactDetailsRouteArgs(
            key: key,
            initialContact: initialContact,
          ),
          initialChildren: children,
        );

  static const String name = 'ContactDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ContactDetailsRouteArgs>(
          orElse: () => const ContactDetailsRouteArgs());
      return ContactDetailsPage(
        key: args.key,
        initialContact: args.initialContact,
      );
    },
  );
}

class ContactDetailsRouteArgs {
  const ContactDetailsRouteArgs({
    this.key,
    this.initialContact,
  });

  final Key? key;

  final Contact? initialContact;

  @override
  String toString() {
    return 'ContactDetailsRouteArgs{key: $key, initialContact: $initialContact}';
  }
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
/// [ContactsTab]
class ContactsTabRoute extends PageRouteInfo<void> {
  const ContactsTabRoute({List<PageRouteInfo>? children})
      : super(
          ContactsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ContactsTab();
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
/// [ResourcesCenterPage]
class ResourcesCenterRoute extends PageRouteInfo<void> {
  const ResourcesCenterRoute({List<PageRouteInfo>? children})
      : super(
          ResourcesCenterRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResourcesCenterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ResourcesCenterPage();
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
/// [SpeciesDetailsPage]
class SpeciesDetailsRoute extends PageRouteInfo<SpeciesDetailsRouteArgs> {
  SpeciesDetailsRoute({
    Key? key,
    Species? initialSpecies,
    List<PageRouteInfo>? children,
  }) : super(
          SpeciesDetailsRoute.name,
          args: SpeciesDetailsRouteArgs(
            key: key,
            initialSpecies: initialSpecies,
          ),
          initialChildren: children,
        );

  static const String name = 'SpeciesDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SpeciesDetailsRouteArgs>(
          orElse: () => const SpeciesDetailsRouteArgs());
      return SpeciesDetailsPage(
        key: args.key,
        initialSpecies: args.initialSpecies,
      );
    },
  );
}

class SpeciesDetailsRouteArgs {
  const SpeciesDetailsRouteArgs({
    this.key,
    this.initialSpecies,
  });

  final Key? key;

  final Species? initialSpecies;

  @override
  String toString() {
    return 'SpeciesDetailsRouteArgs{key: $key, initialSpecies: $initialSpecies}';
  }
}

/// generated route for
/// [SpeciesTab]
class SpeciesTabRoute extends PageRouteInfo<void> {
  const SpeciesTabRoute({List<PageRouteInfo>? children})
      : super(
          SpeciesTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpeciesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpeciesTab();
    },
  );
}
