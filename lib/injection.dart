import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'data/firestore_repository.dart';
import 'domain/i_repository.dart';
import 'logging_service.dart';
import 'services/authentication/firebase/firebase_authentication_service.dart';
import 'services/authentication/i_authentication_service.dart';

final s1 = GetIt.instance;

void initializeDependencyInjection(FirebaseApp app) {
  s1
    // Misc
    ..registerLazySingleton<LoggingService>(LoggingService.new)
    ..registerLazySingleton<IRepository>(FiretoreRepository.new)
    ..registerLazySingleton<FirebaseFirestore>(
        () => FirebaseFirestore.instanceFor(app: app))
    ..registerLazySingleton<FirebaseAuth>(
        () => FirebaseAuth.instanceFor(app: app))
    ..registerLazySingleton<IAuthenticationService>(
        FirebaseAuthenticationService.new)

    // External
    ..registerLazySingleton<RouteObserver<ModalRoute<void>>>(
      RouteObserver<ModalRoute<void>>.new,
    );
}
