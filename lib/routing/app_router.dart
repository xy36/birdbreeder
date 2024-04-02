import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/presentation/auth/presentation/initialization_page.dart';
import 'package:birdbreeder/features/presentation/auth/presentation/login_page.dart';
import 'package:birdbreeder/features/presentation/auth/presentation/sign_up_page.dart';
import 'package:birdbreeder/features/presentation/menu/menu_page.dart';
import 'package:birdbreeder/features/presentation/pages/account/account_page.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bird_page.dart';
import 'package:birdbreeder/features/presentation/pages/birds_overview/birds_overview_page.dart';
import 'package:birdbreeder/features/presentation/pages/breedings/breedings_page.dart';
import 'package:birdbreeder/features/presentation/pages/cages/cages_page.dart';
import 'package:birdbreeder/features/presentation/pages/colors/colors_page.dart';
import 'package:birdbreeder/features/presentation/pages/finances/finances_page.dart';
import 'package:birdbreeder/features/presentation/pages/species/species_page.dart';
import 'package:birdbreeder/routing/auth_guard.dart';
import 'package:birdbreeder/routing/empty_router_page.dart';
import 'package:birdbreeder/routing/login_guard.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: InitializationRoute.page,
          path: '/initialization',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: LoginRoute.page,
          guards: [LoginGuard()],
          path: '/login',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: MenuRoute.page,
          path: '/',
          guards: [AuthGuard()],
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            CustomRoute(
              guards: [AuthGuard()],
              page: BirdsOverviewRoute.page,
              path: 'birds',
              transitionsBuilder: TransitionsBuilders.fadeIn,
              initial: true,
            ),
            CustomRoute(
              page: BirdRoute.page,
              path: 'birds/bird',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: CagesRoute.page,
              path: 'cages',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: ColorsRoute.page,
              path: 'colors',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: SpeciesRoute.page,
              path: 'species',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: BreedingsRoute.page,
              path: 'breedings',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: FinancesRoute.page,
              path: 'finances',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: AccountRoute.page,
              path: 'account',
              guards: [AuthGuard()],
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
      ];
}
