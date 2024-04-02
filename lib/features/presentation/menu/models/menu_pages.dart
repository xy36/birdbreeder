import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/routing/app_router.dart';

enum MenuPage {
  birds(),
  // addBird(),
  cages(),
  colors(),
  species(),
  breedings(),
  finances(),
  account();

  const MenuPage();

  /// should sidemenu be expanded when this page is selected
  final bool expandSideMenu = true;

  /// Returns the icon for the page
  IconData get icon {
    switch (this) {
      case MenuPage.cages:
        return Icons.home;
      case MenuPage.birds:
        return Icons.check_circle_outline;
      case MenuPage.colors:
        return Icons.color_lens;
      case MenuPage.species:
        return Icons.pets;
      // case MenuPage.addBird:
      //   return Icons.add_circle_outline;
      case MenuPage.breedings:
        return Icons.baby_changing_station;
      case MenuPage.finances:
        return Icons.attach_money;
      case MenuPage.account:
        return Icons.account_circle;
    }
  }

  /// Returns the label for the page
  String getLabel(BuildContext context) {
    return switch (this) {
      MenuPage.birds => context.l10n.menu__birds,
      MenuPage.cages => context.l10n.menu__cages,
      MenuPage.colors => context.l10n.menu__colors,
      MenuPage.species => context.l10n.menu__species,
      // MenuPage.addBird => context.l10n.menu__add_bird,
      MenuPage.breedings => context.l10n.menu__breedings,
      MenuPage.finances => context.l10n.menu__finances,
      MenuPage.account => context.l10n.menu__account,
    };
  }

  /// Returns the route name for the page
  PageRouteInfo get routeName {
    return switch (this) {
      MenuPage.birds => const BirdsOverviewRoute(),
      MenuPage.cages => const CagesRoute(),
      MenuPage.colors => const ColorsRoute(),
      MenuPage.species => const SpeciesRoute(),
      // MenuPage.addBird => BirdRoute(bird: null),
      MenuPage.breedings => const BreedingsRoute(),
      MenuPage.finances => const FinancesRoute(),
      MenuPage.account => const AccountRoute(),
    };
  }
}
