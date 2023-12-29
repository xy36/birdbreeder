import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/routing/login_guard.dart';
import 'package:flutter/material.dart';

import '../presentation/auth/presentation/initialization_page.dart';
import '../presentation/auth/presentation/login_page.dart';
import '../presentation/auth/presentation/sign_up_page.dart';
import '../presentation/menu/menu_page.dart';
import '../presentation/pages/account/account_page.dart';
import '../presentation/pages/bird/add_bird/add_bird_page.dart';
import '../presentation/pages/bird/bird/bird_page.dart';
import '../presentation/pages/bird/edit_bird/edit_bird_page.dart';
import '../presentation/pages/birds_overview/birds_overview_page.dart';
import '../presentation/pages/breedings/breedings_page.dart';
import '../presentation/pages/finances/finances_page.dart';
import 'auth_guard.dart';
import 'empty_router_page.dart';

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
              // CustomRoute(
              //   guards: [AuthGuard()],
              //   page: HomeRoute.page,
              //   path: 'home',
              //   transitionsBuilder: TransitionsBuilders.fadeIn,
              // ),
              CustomRoute(
                  guards: [AuthGuard()],
                  page: BirdsOverviewRoute.page,
                  path: 'birds',
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  initial: true),
              CustomRoute(
                page: BirdRoute.page,
                guards: [AuthGuard()],
                path: 'birds/:id',
                transitionsBuilder: TransitionsBuilders.fadeIn,
              ),
              CustomRoute(
                page: EditBirdRoute.page,
                guards: [AuthGuard()],
                path: 'birds/:id/edit',
                transitionsBuilder: TransitionsBuilders.fadeIn,
              ),
              CustomRoute(
                page: AddBirdRoute.page,
                path: 'birds/new',
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
            ]),
        // CustomRoute(
        //   page: EditBirdRoute.page,
        //   path: '/birdsOverview/editBird',
        //   guards: [AuthGuard()],
        //   initial: false,
        //   transitionsBuilder: TransitionsBuilders.fadeIn,
        // ),
      ];
}
