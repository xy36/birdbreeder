import 'package:birdbreeder/services/data_mode/data_mode.dart';
import 'package:birdbreeder/services/local_injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/remote_injection.dart';
import 'package:birdbreeder/services/snackbar_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt s1 = GetIt.instance;

Future<void> initializeDependencyInjection(DataMode mode) async {
  final prefs = await SharedPreferences.getInstance();

  // Idempotent: a second call (double tap / rebuild) must not crash on
  // duplicate registration. Callers that switch mode reset DI themselves.
  if (s1.isRegistered<DataMode>()) {
    return;
  }

  s1
    ..registerSingleton(LoggingService())
    ..registerSingleton(SnackbarService())
    ..registerSingleton<DataMode>(mode);

  if (mode == DataMode.remote) {
    registerRemote(prefs);
  } else {
    registerLocal();
  }

  // Navigation observer
  s1.registerLazySingleton(RouteObserver<ModalRoute<void>>.new);
}
