import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_search_cubit.dart';
import 'package:birdbreeder/features/breedings/cubit/breeding_pair_search_cubit.dart';
import 'package:birdbreeder/features/contacts/cubit/contact_search_cubit.dart';
import 'package:birdbreeder/features/finances/cubit/finances_search_cubit.dart';
import 'package:birdbreeder/i18n/translations.g.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  App({
    super.key,
    this.builder,
    this.useInheritedMediaQuery = false,
    this.locale,
  });

  final Widget Function(BuildContext, Widget?)? builder;
  final bool useInheritedMediaQuery;
  final Locale? locale;

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    const theme = MaterialTheme();

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: s1.get<BirdBreederCubit>()),
        BlocProvider(create: (context) => ContactSearchCubit()),
        BlocProvider(create: (context) => BirdSearchCubit()),
        BlocProvider(create: (context) => FinancesSearchCubit()),
        BlocProvider(create: (context) => BreedingPairSearchCubit()),
        BlocProvider(create: (context) => BirdsFilterCubit()),
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: s1.get<SnackbarService>().messengerKey,
        routerConfig: _appRouter.config(
          reevaluateListenable:
              s1.get<IAuthenticationService>().authenticationStatus,
        ),
        theme: brightness == Brightness.light
            ? theme.light(context)
            : theme.dark(context),
        darkTheme: theme.dark(context),
        builder: (context, child) {
          return child!;
        },
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
      ),
    );
  }
}
