// dart format width=80
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
      : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AccountPage();
    },
  );
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthScreen();
    },
  );
}

/// generated route for
/// [BirdPage]
class BirdRoute extends PageRouteInfo<BirdRouteArgs> {
  BirdRoute({required Bird? bird, Key? key, List<PageRouteInfo>? children})
      : super(
          BirdRoute.name,
          args: BirdRouteArgs(bird: bird, key: key),
          initialChildren: children,
        );

  static const String name = 'BirdRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BirdRouteArgs>();
      return BirdPage(bird: args.bird, key: args.key);
    },
  );
}

class BirdRouteArgs {
  const BirdRouteArgs({required this.bird, this.key});

  final Bird? bird;

  final Key? key;

  @override
  String toString() {
    return 'BirdRouteArgs{bird: $bird, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BirdRouteArgs) return false;
    return bird == other.bird && key == other.key;
  }

  @override
  int get hashCode => bird.hashCode ^ key.hashCode;
}

/// generated route for
/// [BirdsOverviewPage]
class BirdsOverviewRoute extends PageRouteInfo<void> {
  const BirdsOverviewRoute({List<PageRouteInfo>? children})
      : super(BirdsOverviewRoute.name, initialChildren: children);

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
    required String breedingPairId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BreedingPairDetailsRoute.name,
          args: BreedingPairDetailsRouteArgs(
            breedingPairId: breedingPairId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BreedingPairDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BreedingPairDetailsRouteArgs>();
      return BreedingPairDetailsPage(
        breedingPairId: args.breedingPairId,
        key: args.key,
      );
    },
  );
}

class BreedingPairDetailsRouteArgs {
  const BreedingPairDetailsRouteArgs({required this.breedingPairId, this.key});

  final String breedingPairId;

  final Key? key;

  @override
  String toString() {
    return 'BreedingPairDetailsRouteArgs{breedingPairId: $breedingPairId, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BreedingPairDetailsRouteArgs) return false;
    return breedingPairId == other.breedingPairId && key == other.key;
  }

  @override
  int get hashCode => breedingPairId.hashCode ^ key.hashCode;
}

/// generated route for
/// [BreedingPairsPage]
class BreedingPairsRoute extends PageRouteInfo<void> {
  const BreedingPairsRoute({List<PageRouteInfo>? children})
      : super(BreedingPairsRoute.name, initialChildren: children);

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
  BroodRoute({required String broodId, Key? key, List<PageRouteInfo>? children})
      : super(
          BroodRoute.name,
          args: BroodRouteArgs(broodId: broodId, key: key),
          initialChildren: children,
        );

  static const String name = 'BroodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BroodRouteArgs>();
      return BroodPage(broodId: args.broodId, key: args.key);
    },
  );
}

class BroodRouteArgs {
  const BroodRouteArgs({required this.broodId, this.key});

  final String broodId;

  final Key? key;

  @override
  String toString() {
    return 'BroodRouteArgs{broodId: $broodId, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BroodRouteArgs) return false;
    return broodId == other.broodId && key == other.key;
  }

  @override
  int get hashCode => broodId.hashCode ^ key.hashCode;
}

/// generated route for
/// [CageDetailsPage]
class CageDetailsRoute extends PageRouteInfo<CageDetailsRouteArgs> {
  CageDetailsRoute({Key? key, Cage? initialCage, List<PageRouteInfo>? children})
      : super(
          CageDetailsRoute.name,
          args: CageDetailsRouteArgs(key: key, initialCage: initialCage),
          initialChildren: children,
        );

  static const String name = 'CageDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CageDetailsRouteArgs>(
        orElse: () => const CageDetailsRouteArgs(),
      );
      return CageDetailsPage(key: args.key, initialCage: args.initialCage);
    },
  );
}

class CageDetailsRouteArgs {
  const CageDetailsRouteArgs({this.key, this.initialCage});

  final Key? key;

  final Cage? initialCage;

  @override
  String toString() {
    return 'CageDetailsRouteArgs{key: $key, initialCage: $initialCage}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CageDetailsRouteArgs) return false;
    return key == other.key && initialCage == other.initialCage;
  }

  @override
  int get hashCode => key.hashCode ^ initialCage.hashCode;
}

/// generated route for
/// [CagesTab]
class CagesTabRoute extends PageRouteInfo<void> {
  const CagesTabRoute({List<PageRouteInfo>? children})
      : super(CagesTabRoute.name, initialChildren: children);

  static const String name = 'CagesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CagesTab();
    },
  );
}

/// generated route for
/// [CategoriesDetailsPage]
class CategoriesDetailsRoute extends PageRouteInfo<CategoriesDetailsRouteArgs> {
  CategoriesDetailsRoute({
    Key? key,
    FinanceCategory? initialCategory,
    List<PageRouteInfo>? children,
  }) : super(
          CategoriesDetailsRoute.name,
          args: CategoriesDetailsRouteArgs(
            key: key,
            initialCategory: initialCategory,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoriesDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoriesDetailsRouteArgs>(
        orElse: () => const CategoriesDetailsRouteArgs(),
      );
      return CategoriesDetailsPage(
        key: args.key,
        initialCategory: args.initialCategory,
      );
    },
  );
}

class CategoriesDetailsRouteArgs {
  const CategoriesDetailsRouteArgs({this.key, this.initialCategory});

  final Key? key;

  final FinanceCategory? initialCategory;

  @override
  String toString() {
    return 'CategoriesDetailsRouteArgs{key: $key, initialCategory: $initialCategory}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CategoriesDetailsRouteArgs) return false;
    return key == other.key && initialCategory == other.initialCategory;
  }

  @override
  int get hashCode => key.hashCode ^ initialCategory.hashCode;
}

/// generated route for
/// [CategoriesTab]
class CategoriesTabRoute extends PageRouteInfo<void> {
  const CategoriesTabRoute({List<PageRouteInfo>? children})
      : super(CategoriesTabRoute.name, initialChildren: children);

  static const String name = 'CategoriesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoriesTab();
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
          args: ColorDetailsRouteArgs(key: key, initialColor: initialColor),
          initialChildren: children,
        );

  static const String name = 'ColorDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ColorDetailsRouteArgs>(
        orElse: () => const ColorDetailsRouteArgs(),
      );
      return ColorDetailsPage(key: args.key, initialColor: args.initialColor);
    },
  );
}

class ColorDetailsRouteArgs {
  const ColorDetailsRouteArgs({this.key, this.initialColor});

  final Key? key;

  final BirdColor? initialColor;

  @override
  String toString() {
    return 'ColorDetailsRouteArgs{key: $key, initialColor: $initialColor}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ColorDetailsRouteArgs) return false;
    return key == other.key && initialColor == other.initialColor;
  }

  @override
  int get hashCode => key.hashCode ^ initialColor.hashCode;
}

/// generated route for
/// [ColorsTab]
class ColorsTabRoute extends PageRouteInfo<void> {
  const ColorsTabRoute({List<PageRouteInfo>? children})
      : super(ColorsTabRoute.name, initialChildren: children);

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
        orElse: () => const ContactDetailsRouteArgs(),
      );
      return ContactDetailsPage(
        key: args.key,
        initialContact: args.initialContact,
      );
    },
  );
}

class ContactDetailsRouteArgs {
  const ContactDetailsRouteArgs({this.key, this.initialContact});

  final Key? key;

  final Contact? initialContact;

  @override
  String toString() {
    return 'ContactDetailsRouteArgs{key: $key, initialContact: $initialContact}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ContactDetailsRouteArgs) return false;
    return key == other.key && initialContact == other.initialContact;
  }

  @override
  int get hashCode => key.hashCode ^ initialContact.hashCode;
}

/// generated route for
/// [ContactsPage]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute({List<PageRouteInfo>? children})
      : super(ContactsRoute.name, initialChildren: children);

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
      : super(ContactsTabRoute.name, initialChildren: children);

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
      : super(EmptyRouterRoute.name, initialChildren: children);

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
      : super(FinancesRoute.name, initialChildren: children);

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
      : super(InitializationRoute.name, initialChildren: children);

  static const String name = 'InitializationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const InitializationPage();
    },
  );
}

/// generated route for
/// [MenuPage]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
      : super(MenuRoute.name, initialChildren: children);

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
      : super(ResourcesCenterRoute.name, initialChildren: children);

  static const String name = 'ResourcesCenterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ResourcesCenterPage();
    },
  );
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
        orElse: () => const SpeciesDetailsRouteArgs(),
      );
      return SpeciesDetailsPage(
        key: args.key,
        initialSpecies: args.initialSpecies,
      );
    },
  );
}

class SpeciesDetailsRouteArgs {
  const SpeciesDetailsRouteArgs({this.key, this.initialSpecies});

  final Key? key;

  final Species? initialSpecies;

  @override
  String toString() {
    return 'SpeciesDetailsRouteArgs{key: $key, initialSpecies: $initialSpecies}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SpeciesDetailsRouteArgs) return false;
    return key == other.key && initialSpecies == other.initialSpecies;
  }

  @override
  int get hashCode => key.hashCode ^ initialSpecies.hashCode;
}

/// generated route for
/// [SpeciesTab]
class SpeciesTabRoute extends PageRouteInfo<void> {
  const SpeciesTabRoute({List<PageRouteInfo>? children})
      : super(SpeciesTabRoute.name, initialChildren: children);

  static const String name = 'SpeciesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpeciesTab();
    },
  );
}
