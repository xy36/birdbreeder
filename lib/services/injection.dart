import 'package:birdbreeder/features/birds/data/repositories_impl/birds_repository_impl.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/features/cages/data/repositories_impl/cages_repository_impl.dart';
import 'package:birdbreeder/features/cages/domain/repositories/i_cages_repository.dart';
import 'package:birdbreeder/features/colors/data/repositories_impl/bird_colors_repository_impl.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/species/data/repositories_impl/species_repository_impl.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/services/authentication/authentication_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final s1 = GetIt.instance;

void initializeDependencyInjection() {
  s1
    ..registerSingleton<IAuthenticationService>(AuthenticationService())
    ..registerSingleton<PocketBaseService>(PocketBaseService())
    // Misc
    ..registerSingleton<LoggingService>(LoggingService())
    ..registerSingleton<ISpeciesRepository>(SpeciesRepositoryImpl(s1(), s1()))
    ..registerSingleton<ICagesRepository>(CagesRepositoryImpl(s1(), s1()))
    ..registerSingleton<IBirdColorsRepository>(
      BirdColorsRepositoryImpl(s1(), s1()),
    )
    ..registerSingleton<IBirdsRepository>(BirdsRepositoryImpl(s1(), s1()))

    // External
    ..registerLazySingleton<RouteObserver<ModalRoute<void>>>(
      RouteObserver<ModalRoute<void>>.new,
    );
}
