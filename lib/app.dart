import 'package:birdbreeder/bootstrap.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/cubit/birds_cubit.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
          create: (context) => BirdsCubit(s1())..load(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => CagesCubit(s1())..load(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => ContactsCubit(s1())..load(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => SpeciesCubit(s1())..load(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => ColorsCubit(s1())..load(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(
          reevaluateListenable:
              s1.get<IAuthenticationService>().authenticationStatus,
        ),
        theme: themeData ??
            ThemeData(
              colorSchemeSeed: Colors.cyan,
              inputDecorationTheme: const InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
        builder: (context, child) {
          return ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: ScreenSize.getBreakpoints(),
          );
        },
        themeMode: ThemeMode.light,
        localizationsDelegates: const [
          ...AppLocalizations.localizationsDelegates,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
