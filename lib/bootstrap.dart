import 'dart:async';
import 'dart:developer';

import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/initialization_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Initialize the application
  await InitializationService.initialize();

  // Initialize the Dependency Injection (local mode only)
  await initializeDependencyInjection();

  unawaited(_maybeAutoSnapshot());

  Bloc.observer = AppBlocObserver();

  runApp(TranslationProvider(child: await builder()));
}

Future<void> _maybeAutoSnapshot() async {
  final logger = s1.get<LoggingService>().logger;
  try {
    if (await BackupService.shouldAutoSnapshot()) {
      await BackupService.createSnapshot();
      await BackupService.rotateSnapshots();
    }
  } on Object catch (e, st) {
    logger.w('Auto-snapshot failed: $e', error: e, stackTrace: st);
  }
}
