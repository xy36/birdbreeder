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
/// [BackupListPage]
class BackupListRoute extends PageRouteInfo<void> {
  const BackupListRoute({List<PageRouteInfo>? children})
      : super(BackupListRoute.name, initialChildren: children);

  static const String name = 'BackupListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BackupListPage();
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
/// [CageDetailPage]
class CageDetailRoute extends PageRouteInfo<CageDetailRouteArgs> {
  CageDetailRoute({required Cage cage, Key? key, List<PageRouteInfo>? children})
      : super(
          CageDetailRoute.name,
          args: CageDetailRouteArgs(cage: cage, key: key),
          initialChildren: children,
        );

  static const String name = 'CageDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CageDetailRouteArgs>();
      return CageDetailPage(cage: args.cage, key: args.key);
    },
  );
}

class CageDetailRouteArgs {
  const CageDetailRouteArgs({required this.cage, this.key});

  final Cage cage;

  final Key? key;

  @override
  String toString() {
    return 'CageDetailRouteArgs{cage: $cage, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CageDetailRouteArgs) return false;
    return cage == other.cage && key == other.key;
  }

  @override
  int get hashCode => cage.hashCode ^ key.hashCode;
}

/// generated route for
/// [CagesPage]
class CagesTabRoute extends PageRouteInfo<void> {
  const CagesTabRoute({List<PageRouteInfo>? children})
      : super(CagesTabRoute.name, initialChildren: children);

  static const String name = 'CagesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CagesPage();
    },
  );
}

/// generated route for
/// [CategoriesPage]
class CategoriesTabRoute extends PageRouteInfo<void> {
  const CategoriesTabRoute({List<PageRouteInfo>? children})
      : super(CategoriesTabRoute.name, initialChildren: children);

  static const String name = 'CategoriesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoriesPage();
    },
  );
}

/// generated route for
/// [CategoryDetailPage]
class CategoryDetailRoute extends PageRouteInfo<CategoryDetailRouteArgs> {
  CategoryDetailRoute({
    required FinanceCategory category,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryDetailRoute.name,
          args: CategoryDetailRouteArgs(category: category, key: key),
          initialChildren: children,
        );

  static const String name = 'CategoryDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CategoryDetailRouteArgs>();
      return CategoryDetailPage(category: args.category, key: args.key);
    },
  );
}

class CategoryDetailRouteArgs {
  const CategoryDetailRouteArgs({required this.category, this.key});

  final FinanceCategory category;

  final Key? key;

  @override
  String toString() {
    return 'CategoryDetailRouteArgs{category: $category, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CategoryDetailRouteArgs) return false;
    return category == other.category && key == other.key;
  }

  @override
  int get hashCode => category.hashCode ^ key.hashCode;
}

/// generated route for
/// [ColorDetailPage]
class ColorDetailRoute extends PageRouteInfo<ColorDetailRouteArgs> {
  ColorDetailRoute({
    required BirdColor color,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ColorDetailRoute.name,
          args: ColorDetailRouteArgs(color: color, key: key),
          initialChildren: children,
        );

  static const String name = 'ColorDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ColorDetailRouteArgs>();
      return ColorDetailPage(color: args.color, key: args.key);
    },
  );
}

class ColorDetailRouteArgs {
  const ColorDetailRouteArgs({required this.color, this.key});

  final BirdColor color;

  final Key? key;

  @override
  String toString() {
    return 'ColorDetailRouteArgs{color: $color, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ColorDetailRouteArgs) return false;
    return color == other.color && key == other.key;
  }

  @override
  int get hashCode => color.hashCode ^ key.hashCode;
}

/// generated route for
/// [ColorsPage]
class ColorsTabRoute extends PageRouteInfo<void> {
  const ColorsTabRoute({List<PageRouteInfo>? children})
      : super(ColorsTabRoute.name, initialChildren: children);

  static const String name = 'ColorsTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ColorsPage();
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
/// [CsvImportPage]
class CsvImportRoute extends PageRouteInfo<void> {
  const CsvImportRoute({List<PageRouteInfo>? children})
      : super(CsvImportRoute.name, initialChildren: children);

  static const String name = 'CsvImportRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CsvImportPage();
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
/// [PedigreePage]
class PedigreeRoute extends PageRouteInfo<PedigreeRouteArgs> {
  PedigreeRoute({required Bird bird, Key? key, List<PageRouteInfo>? children})
      : super(
          PedigreeRoute.name,
          args: PedigreeRouteArgs(bird: bird, key: key),
          initialChildren: children,
        );

  static const String name = 'PedigreeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PedigreeRouteArgs>();
      return PedigreePage(bird: args.bird, key: args.key);
    },
  );
}

class PedigreeRouteArgs {
  const PedigreeRouteArgs({required this.bird, this.key});

  final Bird bird;

  final Key? key;

  @override
  String toString() {
    return 'PedigreeRouteArgs{bird: $bird, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PedigreeRouteArgs) return false;
    return bird == other.bird && key == other.key;
  }

  @override
  int get hashCode => bird.hashCode ^ key.hashCode;
}

/// generated route for
/// [SpeciesDetailPage]
class SpeciesDetailRoute extends PageRouteInfo<SpeciesDetailRouteArgs> {
  SpeciesDetailRoute({
    required Species species,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SpeciesDetailRoute.name,
          args: SpeciesDetailRouteArgs(species: species, key: key),
          initialChildren: children,
        );

  static const String name = 'SpeciesDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SpeciesDetailRouteArgs>();
      return SpeciesDetailPage(species: args.species, key: args.key);
    },
  );
}

class SpeciesDetailRouteArgs {
  const SpeciesDetailRouteArgs({required this.species, this.key});

  final Species species;

  final Key? key;

  @override
  String toString() {
    return 'SpeciesDetailRouteArgs{species: $species, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SpeciesDetailRouteArgs) return false;
    return species == other.species && key == other.key;
  }

  @override
  int get hashCode => species.hashCode ^ key.hashCode;
}

/// generated route for
/// [SpeciesPage]
class SpeciesTabRoute extends PageRouteInfo<void> {
  const SpeciesTabRoute({List<PageRouteInfo>? children})
      : super(SpeciesTabRoute.name, initialChildren: children);

  static const String name = 'SpeciesTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpeciesPage();
    },
  );
}
