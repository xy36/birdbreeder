import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/local_injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/snackbar_service.dart';
import 'package:birdbreeder/services/species_image_search_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final GetIt s1 = GetIt.instance;

Future<void> initializeDependencyInjection() async {
  // Idempotent: a second call (double tap / rebuild) must not crash on
  // duplicate registration. Callers that reset DI re-register from scratch.
  if (s1.isRegistered<AppDatabase>()) {
    return;
  }

  s1
    ..registerSingleton(LoggingService())
    ..registerSingleton(SnackbarService())
    ..registerLazySingleton<http.Client>(http.Client.new)
    ..registerLazySingleton<SpeciesImageSearchService>(
      () => SpeciesImageSearchService(s1<http.Client>(), s1<LoggingService>()),
    );

  registerLocal();

  // Navigation observer
  s1.registerLazySingleton(RouteObserver<ModalRoute<void>>.new);
}
