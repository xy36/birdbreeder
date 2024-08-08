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
import 'package:birdbreeder/features/breedings/breedings_page.dart';
import 'package:birdbreeder/features/cages/presentation/cages_page.dart';
import 'package:birdbreeder/features/colors/presentation/colors_page.dart';
import 'package:birdbreeder/features/finances/finances_page.dart';
import 'package:birdbreeder/features/menu/presentation/menu_page.dart';
import 'package:birdbreeder/features/species/presentation/species_page.dart';
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
