import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/empty_router_page.dart';
import 'package:birdbreeder/core/routing/guards/auth_guard.dart';
import 'package:birdbreeder/core/routing/guards/login_guard.dart';
import 'package:birdbreeder/features/account/account_page.dart';
import 'package:birdbreeder/features/authentication/auth_screen.dart';
import 'package:birdbreeder/features/authentication/initialization_page.dart';
import 'package:birdbreeder/features/backup/backup_list_page.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bird_page.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_page.dart';
import 'package:birdbreeder/features/breedings/breeding_pair_details/breeding_pair_details_page.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/breeding_pairs_page.dart';
import 'package:birdbreeder/features/contacts/contact_details_page.dart';
import 'package:birdbreeder/features/contacts/contacts_page.dart';
import 'package:birdbreeder/features/csv_import/csv_import_page.dart';
import 'package:birdbreeder/features/finances/finances_page.dart';
import 'package:birdbreeder/features/menu/presentation/menu_page.dart';
import 'package:birdbreeder/features/mode_selection/mode_selection_page.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/cage_detail_page.dart';
import 'package:birdbreeder/features/ressourcen_center/cages/cages_page.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/categories_page.dart';
import 'package:birdbreeder/features/ressourcen_center/categories/finance_category_detail_page.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/color_detail_page.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/colors_page.dart';
import 'package:birdbreeder/features/ressourcen_center/species/species_detail_page.dart';
import 'package:birdbreeder/features/ressourcen_center/species/species_page.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          page: ModeSelectionRoute.page,
          path: '/mode-selection',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute<void>(
          page: AuthRoute.page,
          path: '/auth',
          guards: [LoginGuard()],
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute<void>(
          page: InitializationRoute.page,
          path: '/initialization',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute<void>(
          page: MenuRoute.page,
          path: '/',
          initial: true,
          guards: [AuthGuard()],
          transitionsBuilder: TransitionsBuilders.slideLeft,
          children: [
            AutoRoute(
              page: BirdsOverviewRoute.page,
              path: 'birds',
              initial: true,
            ),
            AutoRoute(page: BirdRoute.page, path: 'birds/bird'),
            AutoRoute(page: ContactsRoute.page, path: 'contacts'),
            AutoRoute(page: ContactDetailsRoute.page, path: 'contacts/details'),
            AutoRoute(page: BreedingPairsRoute.page, path: 'breedingPairs'),
            AutoRoute(
              page: BreedingPairDetailsRoute.page,
              path: 'breedingPairs/details',
            ),
            AutoRoute(page: FinancesRoute.page, path: 'finances'),
            AutoRoute(page: AccountRoute.page, path: 'account'),
            AutoRoute(page: BackupListRoute.page, path: 'account/backups'),
            AutoRoute(page: CsvImportRoute.page, path: 'csv-import'),
            AutoRoute(page: CagesTabRoute.page, path: 'resources/cages'),
            AutoRoute(page: ColorsTabRoute.page, path: 'resources/colors'),
            AutoRoute(page: SpeciesTabRoute.page, path: 'resources/species'),
            AutoRoute(
              page: CategoriesTabRoute.page,
              path: 'resources/categories',
            ),
            AutoRoute(
              page: CageDetailRoute.page,
              path: 'resources/cages/detail',
            ),
            AutoRoute(
              page: ColorDetailRoute.page,
              path: 'resources/colors/detail',
            ),
            AutoRoute(
              page: SpeciesDetailRoute.page,
              path: 'resources/species/detail',
            ),
            AutoRoute(
              page: CategoryDetailRoute.page,
              path: 'resources/categories/detail',
            ),
          ],
        ),
      ];
}
