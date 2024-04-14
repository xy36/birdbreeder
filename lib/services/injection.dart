import 'package:birdbreeder/features/birds/data/repositories/firestore_birds_repository.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/features/cages/data/repositories/firestore_cages_repository.dart';
import 'package:birdbreeder/features/cages/domain/i_cages_repository.dart';
import 'package:birdbreeder/features/colors/data/repositories/firestore_bird_colors_repository.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/species/data/repositories/firestore_species_repository.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/authentication/firebase/firebase_authentication_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final s1 = GetIt.instance;

void initializeDependencyInjection(FirebaseApp app) {
  s1
    // Misc
    ..registerSingleton<LoggingService>(LoggingService())
    ..registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instanceFor(app: app),
    )
    ..registerLazySingleton<FirebaseAuth>(
      () => FirebaseAuth.instanceFor(app: app),
    )
    ..registerLazySingleton<IAuthenticationService>(
      FirebaseAuthenticationService.new,
    )
    ..registerLazySingleton<IBirdsRepository>(FirestoreBirdsRepository.new)
    ..registerLazySingleton<ICagesRepository>(FirestoreCagesRepository.new)
    ..registerLazySingleton<ISpeciesRepository>(FirestoreSpeciesRepository.new)
    ..registerLazySingleton<IBirdColorsRepository>(
      FirestoreBirdColorsRepository.new,
    )

    // External
    ..registerLazySingleton<RouteObserver<ModalRoute<void>>>(
      RouteObserver<ModalRoute<void>>.new,
    );
}
