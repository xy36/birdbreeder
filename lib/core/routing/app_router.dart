import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/core/routing/auth_guard.dart';
import 'package:birdbreeder/core/routing/empty_router_page.dart';
import 'package:birdbreeder/core/routing/login_guard.dart';
import 'package:birdbreeder/features/account/account_page.dart';
import 'package:birdbreeder/features/authentication/presentation/initialization_page.dart';
import 'package:birdbreeder/features/authentication/presentation/login_page.dart';
import 'package:birdbreeder/features/authentication/presentation/sign_up_page.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bird_page.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_page.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/breeding_pair_page.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pairs/breeding_pairs_page.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cage_page.dart';
import 'package:birdbreeder/features/cages/presentation/cages/cages_page.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/color/color_page.dart';
import 'package:birdbreeder/features/colors/presentation/colors_page.dart';
import 'package:birdbreeder/features/contacts/presentation/contacts_page.dart';
import 'package:birdbreeder/features/finances/finances_page.dart';
import 'package:birdbreeder/features/menu/presentation/menu_page.dart';
import 'package:birdbreeder/features/species/presentation/species_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          page: LoginRoute.page,
          guards: [LoginGuard()],
          path: '/login',
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
          guards: [AuthGuard()],
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            CustomRoute<void>(
              guards: [AuthGuard()],
              page: BirdsOverviewRoute.page,
              path: 'birds',
              transitionsBuilder: TransitionsBuilders.slideLeft,
              initial: true,
            ),
            CustomRoute<void>(
              page: BirdRoute.page,
              path: 'birds/bird',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: ContactsRoute.page,
              path: 'contacts',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: CagesRoute.page,
              path: 'cages',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: BreedingPairRoute.page,
              path: 'cages/cage',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: ColorsRoute.page,
              path: 'colors',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: SpeciesRoute.page,
              path: 'species',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: BreedingPairsRoute.page,
              path: 'breedingPairs',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: BreedingPairRoute.page,
              path: 'breedingPairs/breedingPair',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: FinancesRoute.page,
              path: 'finances',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
            CustomRoute<void>(
              page: AccountRoute.page,
              path: 'account',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.slideLeft,
            ),
          ],
        ),
      ];
}
