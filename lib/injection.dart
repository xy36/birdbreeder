import 'package:birdbreeder/features/data/firestore_repository.dart';
import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/logging_service.dart';
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
    ..registerLazySingleton<IRepository>(FiretoreRepository.new)
    ..registerLazySingleton<FirebaseFirestore>(
      () => FirebaseFirestore.instanceFor(app: app),
    )
    ..registerLazySingleton<FirebaseAuth>(
      () => FirebaseAuth.instanceFor(app: app),
    )
    ..registerLazySingleton<IAuthenticationService>(
      FirebaseAuthenticationService.new,
    )

    // External
    ..registerLazySingleton<RouteObserver<ModalRoute<void>>>(
      RouteObserver<ModalRoute<void>>.new,
    );
}
