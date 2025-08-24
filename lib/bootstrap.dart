import 'dart:async';
import 'dart:developer';

import 'package:birdbreeder/services/initialization_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

ThemeData? themeData;

class AppBlocObserver extends BlocObserver {
  Logger get logger => s1.get<LoggingService>().logger;

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    if (bloc is BirdBreederCubit) {
      logger.d(
        '[${bloc.runtimeType}] '
        '${_short(change.currentState)} \n→ ${_short(change.nextState)}',
      );
    }
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logger.e(
      '[${bloc.runtimeType}] ERROR: $error',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }
}

// Hilfsfunktion: kürzt lange States (Listen nur als Count)
String _short(Object? state) {
  if (state is BirdBreederState) {
    return state.short();
  }
  return state.toString();
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  // try {
  //   final themeStr =
  //       await rootBundle.loadString(Assets.themes.appainterThemeRed);
  //   final themeJson = jsonDecode(themeStr);
  //   themeData = ThemeDecoder.decodeThemeData(themeJson);
  // } catch (e) {
  //   print(e);
  // }

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Initialize the Dependency Injection
  await initializeDependencyInjection();

  // Initialize the application
  await InitializationService.initialize();

  await s1.get<PocketBaseService>().init();

  // Bloc.observer = TalkerBlocObserver(
  //     //talker: s1.get<LoggingService>().logger,
  //     //settings: TalkerBlocLoggerSettings(printStateFullData: true),
  //     );

  Bloc.observer = AppBlocObserver();

  runApp(await builder());
}
