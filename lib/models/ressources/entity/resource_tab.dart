import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/cages_page.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/categories_page.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/colors_page.dart';
import 'package:birdbreeder/features/ressourcen_center/species/species_page.dart';

enum ResourceTab {
  species,
  cages,
  colors,
  financesCategories;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case ResourceTab.species:
        return context.tr.species.title;
      case ResourceTab.cages:
        return context.tr.cages.title;
      case ResourceTab.colors:
        return context.tr.colors.title;
      case ResourceTab.financesCategories:
        return context.tr.finances.categories.title;
    }
  }

  PageRouteInfo<dynamic> get route => switch (this) {
        ResourceTab.species => const SpeciesTabRoute(),
        ResourceTab.cages => const CagesTabRoute(),
        ResourceTab.colors => const ColorsTabRoute(),
        ResourceTab.financesCategories => const CategoriesTabRoute(),
      };

  Widget get child => switch (this) {
        ResourceTab.species => const SpeciesPage(),
        ResourceTab.cages => const CagesPage(),
        ResourceTab.colors => const ColorsPage(),
        ResourceTab.financesCategories => const CategoriesPage(),
      };
}
