import 'package:birdbreeder/app_theme_blumine.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cubit/cage_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/color/cubit/color_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => CageCubit(s1()),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => ContactsCubit(s1()),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => SpeciesCubit(s1()),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => ColorCubit(s1()),
        ),
        BlocProvider.value(value: s1.get<BirdBreederCubit>()),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(
          reevaluateListenable:
              s1.get<IAuthenticationService>().authenticationStatus,
        ),
        theme: AppThemeBlumine.dark,
        darkTheme: AppThemeBlumine.dark,
        builder: (context, child) {
          return child!;
        },
        themeMode: ThemeMode.dark,
        localizationsDelegates: const [
          ...AppLocalizations.localizationsDelegates,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
