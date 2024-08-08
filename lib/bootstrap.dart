import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:birdbreeder/gen/assets.gen.dart';
import 'package:birdbreeder/services/initialization_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

ThemeData? themeData;

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    final themeStr =
        await rootBundle.loadString(Assets.themes.appainterThemeBlue);
    final themeJson = jsonDecode(themeStr);
    themeData = ThemeDecoder.decodeThemeData(themeJson);
  } catch (e) {
    print(e);
  }

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Initialize the Dependency Injection
  await initializeDependencyInjection();

  // Initialize the application
  await InitializationService.initialize();

  await s1.get<PocketBaseService>().init();

  Bloc.observer = TalkerBlocObserver(
    talker: s1.get<LoggingService>().logger,
  );

  runApp(await builder());
}
