import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/presentation/widgets/tabs/cages_tab.dart';
import 'package:birdbreeder/features/ressourcen_center/presentation/widgets/tabs/categories_tab.dart';
import 'package:birdbreeder/features/ressourcen_center/presentation/widgets/tabs/colors_tab.dart';
import 'package:birdbreeder/features/ressourcen_center/presentation/widgets/tabs/species_tab.dart';

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
        ResourceTab.species => const SpeciesTab(),
        ResourceTab.cages => const CagesTab(),
        ResourceTab.colors => const ColorsTab(),
        ResourceTab.financesCategories => const CategoriesTab(),
      };
}
