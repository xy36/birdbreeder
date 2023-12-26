import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'hive.dart';
import 'initialization_service.dart';
import 'injection.dart';

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

  FirebaseApp app;

  if (kIsWeb) {
    app = await Firebase.initializeApp(
      name: 'Bird Breeder',
      options: const FirebaseOptions(
          apiKey: "AIzaSyBf9S3vIqEteLxZ2e93QaNCOoTmhIQy8GI",
          authDomain: "bird-breeder-c4b37.firebaseapp.com",
          projectId: "bird-breeder-c4b37",
          storageBucket: "bird-breeder-c4b37.appspot.com",
          messagingSenderId: "12776043662",
          appId: "1:12776043662:web:08492619e8921ca783c5df"),
    );
  } else {
    app = await Firebase.initializeApp();
  }

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Initialize the Dependency Injection
  initializeDependencyInjection(app);

  // Initialize the application
  await InitializationService.initialize();

  if (kDebugMode) {
    try {
      s1.get<FirebaseFirestore>().useFirestoreEmulator(
            'localhost',
            8080,
          );
      await s1.get<FirebaseAuth>().useAuthEmulator('localhost', 9099);
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }

  // Initialize Hive boxes and adapters
  await initializeHive();

  Bloc.observer = AppBlocObserver();

  runApp(await builder());
}
