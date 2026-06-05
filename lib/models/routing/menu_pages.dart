import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/shared/icons.dart';

enum MenuPage {
  birds(),
  contacts(),
  breedings(),
  finances(),
  species(),
  cages(),
  colors(),
  financesCategories(),
  csvImport(),
  account();

  const MenuPage();

  /// should sidemenu be expanded when this page is selected
  final bool expandSideMenu = true;

  /// Returns the icon for the page
  IconData get icon {
    switch (this) {
      case MenuPage.birds:
        return AppIcons.menuBirds;
      case MenuPage.contacts:
        return AppIcons.menuContacts;
      case MenuPage.breedings:
        return AppIcons.menuBreedings;
      case MenuPage.finances:
        return AppIcons.menuFinances;
      case MenuPage.species:
        return AppIcons.species;
      case MenuPage.cages:
        return AppIcons.cage;
      case MenuPage.colors:
        return AppIcons.color;
      case MenuPage.financesCategories:
        return AppIcons.menuFinances;
      case MenuPage.csvImport:
        return AppIcons.menuCsvImport;
      case MenuPage.account:
        return AppIcons.menuAccount;
    }
  }

  /// Returns the label for the page
  String getLabel(BuildContext context) {
    return switch (this) {
      MenuPage.birds => context.tr.menu.birds.title,
      MenuPage.contacts => context.tr.menu.contacts.title,
      MenuPage.breedings => context.tr.menu.breedings.title,
      MenuPage.finances => context.tr.menu.finances.title,
      MenuPage.species => context.tr.menu.species.title,
      MenuPage.cages => context.tr.menu.cages.title,
      MenuPage.colors => context.tr.menu.colors.title,
      MenuPage.financesCategories => context.tr.menu.finance_categories.title,
      MenuPage.csvImport => context.tr.menu.csv_import.title,
      MenuPage.account => context.tr.menu.account.title,
    };
  }

  String getSubtitle(BuildContext context) {
    return switch (this) {
      MenuPage.birds => context.tr.menu.birds.description,
      MenuPage.contacts => context.tr.menu.contacts.description,
      MenuPage.breedings => context.tr.menu.breedings.description,
      MenuPage.finances => context.tr.menu.finances.description,
      MenuPage.species => context.tr.menu.species.description,
      MenuPage.cages => context.tr.menu.cages.description,
      MenuPage.colors => context.tr.menu.colors.description,
      MenuPage.financesCategories =>
        context.tr.menu.finance_categories.description,
      MenuPage.csvImport => context.tr.menu.csv_import.description,
      MenuPage.account => context.tr.menu.account.description,
    };
  }

  /// Returns the route name for the page
  PageRouteInfo get routeName {
    return switch (this) {
      MenuPage.birds => const BirdsOverviewRoute(),
      MenuPage.contacts => const ContactsRoute(),
      MenuPage.breedings => const BreedingPairsRoute(),
      MenuPage.finances => const FinancesRoute(),
      MenuPage.account => const AccountRoute(),
      MenuPage.species => const SpeciesTabRoute(),
      MenuPage.cages => const CagesTabRoute(),
      MenuPage.colors => const ColorsTabRoute(),
      MenuPage.financesCategories => const CategoriesTabRoute(),
      MenuPage.csvImport => const CsvImportRoute(),
    };
  }
}
