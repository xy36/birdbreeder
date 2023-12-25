import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../domain/models/entities/bird.dart';
import '../presentation/auth/presentation/initialization_page.dart';
import '../presentation/auth/presentation/login_page.dart';
import '../presentation/auth/presentation/sign_up_page.dart';
import '../presentation/home/home_page.dart';
import '../presentation/pages/bird/bird_page.dart';
import '../presentation/pages/birds_overview/birds_overview_page.dart';
import 'auth_guard.dart';
import 'empty_router_page.dart';
import 'login_guard.dart';

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
          page: HomeRoute.page,
          path: '/',
          guards: [AuthGuard()],
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: BirdsOverviewRoute.page,
          path: '/birdsOverview',
          guards: [AuthGuard()],
          initial: false,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: BirdRoute.page,
          path: '/addNewBird',
          guards: [AuthGuard()],
          initial: false,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];
}
