import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/breedings/breeding_pairs/cubit/breeding_pairs_filter_cubit.dart';
import 'package:birdbreeder/features/finances/cubit/finances_filter_cubit.dart';
import 'package:birdbreeder/features/onboarding/onboarding_screen.dart';
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

    return BlocProvider.value(
      value: s1.get<BirdBreederCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return BlocBuilder<BirdBreederCubit, BirdBreederState>(
            builder: (context, state) {
              // Until the first load completes we can't tell whether an app-user
              // contact exists; show a splash to avoid flashing the onboarding.
              if (state is! BirdBreederLoaded) {
                return _LoadingApp(theme: theme, themeMode: themeMode);
              }

              // No contact flagged as the app user — block on onboarding until
              // one is created. The gate re-evaluates once the contact is saved.
              if (state.birdBreederResources.contacts.appUser == null) {
                return _OnboardingApp(theme: theme, themeMode: themeMode);
              }

              return _RouterApp(
                theme: theme,
                themeMode: themeMode,
                appRouter: _appRouter,
              );
            },
          );
        },
      ),
    );
  }
}

class _LoadingApp extends StatelessWidget {
  const _LoadingApp({required this.theme, required this.themeMode});

  final MaterialTheme theme;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: const ValueKey('app-loading'),
      theme: theme.light(context),
      darkTheme: theme.dark(context),
      themeMode: themeMode,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      home: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}

class _OnboardingApp extends StatelessWidget {
  const _OnboardingApp({required this.theme, required this.themeMode});

  final MaterialTheme theme;
  final ThemeMode themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: const ValueKey('app-onboarding'),
      scaffoldMessengerKey: s1.get<SnackbarService>().messengerKey,
      theme: theme.light(context),
      darkTheme: theme.dark(context),
      themeMode: themeMode,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      home: const OnboardingScreen(),
    );
  }
}

class _RouterApp extends StatelessWidget {
  const _RouterApp({
    required this.theme,
    required this.themeMode,
    required this.appRouter,
  });

  final MaterialTheme theme;
  final ThemeMode themeMode;
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ContactSearchCubit()),
        BlocProvider(create: (context) => BirdSearchCubit()),
        BlocProvider(create: (context) => FinanceSearchCubit()),
        BlocProvider(create: (context) => FinancesFilterCubit()),
        BlocProvider(create: (context) => BreedingPairSearchCubit()),
        BlocProvider(create: (context) => BreedingPairsFilterCubit()),
        BlocProvider(
          create: (context) => BirdsFilterCubit(
            currentUserContactId: s1
                .get<BirdBreederCubit>()
                .state
                .birdBreederResources
                .contacts
                .appUser
                ?.id,
          ),
        ),
      ],
      child: MaterialApp.router(
        key: const ValueKey('app-router'),
        scaffoldMessengerKey: s1.get<SnackbarService>().messengerKey,
        routerConfig: appRouter.config(
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
  }
}
