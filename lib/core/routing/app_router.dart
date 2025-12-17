import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/empty_router_page.dart';
import 'package:birdbreeder/core/routing/guards/auth_guard.dart';
import 'package:birdbreeder/core/routing/guards/login_guard.dart';
import 'package:birdbreeder/features/account/account_page.dart';
import 'package:birdbreeder/features/authentication/auth_screen.dart';
import 'package:birdbreeder/features/authentication/initialization_page.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bird_page.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_page.dart';
import 'package:birdbreeder/features/breedings/breeding_pair_details/breeding_pair_details_page.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/breeding_pairs_page.dart';
import 'package:birdbreeder/features/breedings/brood/brood_page.dart';
import 'package:birdbreeder/features/contacts/contact_details_page.dart';
import 'package:birdbreeder/features/contacts/contacts_page.dart';
import 'package:birdbreeder/features/finances/finances_page.dart';
import 'package:birdbreeder/features/menu/presentation/menu_page.dart';
import 'package:birdbreeder/features/ressourcen_center/resources_center_page.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/tabs/cages_tab.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/tabs/categories_tab.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/tabs/colors_tab.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/tabs/contacts_tab.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/tabs/species_tab.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
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
            AutoRoute(
              page: BroodRoute.page,
              path: 'breedingPairs/details/brood',
            ),
            AutoRoute(page: FinancesRoute.page, path: 'finances'),
            AutoRoute(page: AccountRoute.page, path: 'account'),

            // Resources center with nested "tab" routes for deep linking
            AutoRoute(
              path: 'resources',
              page: ResourcesCenterRoute.page,
              children: [
                AutoRoute(path: 'species', page: SpeciesTabRoute.page),
                AutoRoute(path: 'cages', page: CagesTabRoute.page),
                AutoRoute(path: 'categories', page: CategoriesTabRoute.page),
                AutoRoute(path: 'colors', page: ColorsTabRoute.page),
                AutoRoute(path: 'contacts', page: ContactsTabRoute.page),
                RedirectRoute(path: '', redirectTo: 'species'),
              ],
            ),
          ],
        ),
      ];
}
