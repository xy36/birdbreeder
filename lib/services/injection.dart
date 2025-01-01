import 'package:birdbreeder/features/birds/data/repositories_impl/birds_repository_impl.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/features/birds/presentation/cubit/birds_cubit.dart';
import 'package:birdbreeder/features/cages/data/repositories_impl/cages_repository_impl.dart';
import 'package:birdbreeder/features/cages/domain/repositories/i_cages_repository.dart';
import 'package:birdbreeder/features/colors/data/repositories_impl/bird_colors_repository_impl.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/features/contacts/data/repositories_impl/contact_repository_impl.dart';
import 'package:birdbreeder/features/contacts/domain/repositories/i_contacts_repository.dart';
import 'package:birdbreeder/features/species/data/repositories_impl/species_repository_impl.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/services/authentication/authentication_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:birdbreeder/services/token_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final s1 = GetIt.instance;

Future<void> initializeDependencyInjection() async {
  //TODO: rework
  final prefs = await SharedPreferences.getInstance();

  s1
    ..registerSingleton<LoggingService>(LoggingService())
    ..registerSingleton<TokenStorageService>(TokenStorageService(prefs, s1()))
    ..registerSingleton<PocketBaseService>(PocketBaseService())
    ..registerLazySingleton<IAuthenticationService>(
      () => AuthenticationService(s1(), s1()),
    )
    // Misc
    ..registerLazySingleton<ISpeciesRepository>(
      () => SpeciesRepositoryImpl(s1(), s1()),
    )
    ..registerLazySingleton<ICagesRepository>(
      () => CagesRepositoryImpl(s1(), s1()),
    )
    ..registerLazySingleton<IBirdColorsRepository>(
      () => BirdColorsRepositoryImpl(s1(), s1()),
    )
    ..registerLazySingleton<IContactsRepository>(
      () => ContactsRepositoryImpl(s1(), s1()),
    )
    ..registerLazySingleton<IBirdsRepository>(
      () => BirdsRepositoryImpl(s1(), s1()),
    )

    // Blocs
    ..registerLazySingleton<BirdsCubit>(
      () => BirdsCubit(s1()),
    )

    // External
    ..registerLazySingleton<RouteObserver<ModalRoute<void>>>(
      RouteObserver<ModalRoute<void>>.new,
    );
}
