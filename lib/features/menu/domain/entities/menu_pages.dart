import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';

enum MenuPage {
  birds(),
  contacts(),
  breedings(),
  finances(),
  resources(),
  account();

  const MenuPage();

  /// should sidemenu be expanded when this page is selected
  final bool expandSideMenu = true;

  /// Returns the icon for the page
  IconData get icon {
    switch (this) {
      case MenuPage.birds:
        return Icons.check_circle_outline;
      case MenuPage.contacts:
        return Icons.contacts;
      case MenuPage.breedings:
        return Icons.baby_changing_station;
      case MenuPage.finances:
        return Icons.attach_money;
      case MenuPage.resources:
        return Icons.folder;
      case MenuPage.account:
        return Icons.account_circle;
    }
  }

  /// Returns the label for the page
  String getLabel(BuildContext context) {
    return switch (this) {
      MenuPage.birds => context.tr.menu.name.birds,
      MenuPage.contacts => context.tr.menu.name.contacts,
      MenuPage.breedings => context.tr.menu.name.breedings,
      MenuPage.finances => context.tr.menu.name.finances,
      MenuPage.resources => context.tr.menu.name.resources,
      MenuPage.account => context.tr.menu.name.account,
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
      MenuPage.resources => const ResourcesCenterRoute(),
    };
  }
}
