import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/cubit/breeding_pairs_filter_cubit.dart';
import 'package:birdbreeder/features/finances/cubit/finances_filter_cubit.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';
import 'package:birdbreeder/shared/cubits/theme_cubit/theme_cubit.dart';
import 'package:birdbreeder/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    this.builder,
    this.useInheritedMediaQuery = false,
    this.locale,
  });

  final Widget Function(BuildContext, Widget?)? builder;
  final bool useInheritedMediaQuery;
  final Locale? locale;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: _AppShell(),
    );
  }
}

class _AppShell extends StatefulWidget {
  // Intentionally non-const: a const instance would be canonicalized and
  // App.build would skip rebuilding this subtree after runApp, so a fresh
  // router (e.g. after a backup restore resets DI) would never be picked up.
  // ignore: prefer_const_constructors_in_immutables
  _AppShell();

  @override
  State<_AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<_AppShell> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    const theme = MaterialTheme();

    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: s1.get<BirdBreederCubit>()),
            BlocProvider(create: (context) => ContactSearchCubit()),
            BlocProvider(create: (context) => BirdSearchCubit()),
            BlocProvider(create: (context) => FinanceSearchCubit()),
            BlocProvider(create: (context) => FinancesFilterCubit()),
            BlocProvider(create: (context) => BreedingPairSearchCubit()),
            BlocProvider(create: (context) => BreedingPairsFilterCubit()),
            BlocProvider(
              create: (context) => BirdsFilterCubit(
                currentUserContactId: s1
                    .get<IAuthenticationService>()
                    .currentUser()
                    .asValue
                    ?.value
                    ?.contactId,
              ),
            ),
          ],
          child: MaterialApp.router(
            key: const ValueKey('app-router'),
            scaffoldMessengerKey: s1.get<SnackbarService>().messengerKey,
            routerConfig: _appRouter.config(
              reevaluateListenable:
                  s1.get<IAuthenticationService>().authenticationStatus,
            ),
            theme: theme.light(context),
            darkTheme: theme.dark(context),
            themeMode: themeMode,
            builder: (context, child) => PopScope(
              canPop: false,
              child: child!,
            ),
            locale: TranslationProvider.of(context).flutterLocale,
            supportedLocales: AppLocaleUtils.supportedLocales,
            localizationsDelegates: GlobalMaterialLocalizations.delegates,
          ),
        );
      },
    );
  }
}
