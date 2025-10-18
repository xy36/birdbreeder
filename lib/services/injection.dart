import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/egg_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/finances_categories_dto.dart';
import 'package:birdbreeder/features/birds/data/dtos/finances_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/brood_dto.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/ressourcen_center/data/dtos/species_dto.dart';
import 'package:birdbreeder/services/authentication/authentication_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:birdbreeder/services/snackbar_service.dart';
import 'package:birdbreeder/services/token_storage_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
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
    ..registerSingleton<SnackbarService>(SnackbarService())
    ..registerLazySingleton<IAuthenticationService>(
      () => AuthenticationService(s1(), s1()),
    )
    // Misc
    ..registerLazySingleton<RessourceRepository<BirdDto>>(
      () => RessourceRepository<BirdDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().birdsCollection,
        fromJson: BirdDto.fromJson,
        toJson: (bird) => bird.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<BreedingPairDto>>(
      () => RessourceRepository<BreedingPairDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().breedingPairCollection,
        fromJson: BreedingPairDto.fromJson,
        toJson: (breedingPair) => breedingPair.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<BroodDto>>(
      () => RessourceRepository<BroodDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().broodsCollection,
        fromJson: BroodDto.fromJson,
        toJson: (brood) => brood.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<CageDto>>(
      () => RessourceRepository<CageDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().cagesCollection,
        fromJson: CageDto.fromJson,
        toJson: (cage) => cage.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<SpeciesDto>>(
      () => RessourceRepository<SpeciesDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().speciesCollection,
        fromJson: SpeciesDto.fromJson,
        toJson: (species) => species.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<BirdColorDto>>(
      () => RessourceRepository<BirdColorDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().colorsCollection,
        fromJson: BirdColorDto.fromJson,
        toJson: (color) => color.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<ContactDto>>(
      () => RessourceRepository<ContactDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().contactsCollection,
        fromJson: ContactDto.fromJson,
        toJson: (contact) => contact.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<EggDto>>(
      () => RessourceRepository<EggDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().eggsCollection,
        fromJson: EggDto.fromJson,
        toJson: (egg) => egg.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<FinancesCategoriesDto>>(
      () => RessourceRepository<FinancesCategoriesDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().financesCategoriesCollection,
        fromJson: FinancesCategoriesDto.fromJson,
        toJson: (f) => f.toJson(),
      ),
    )
    ..registerLazySingleton<RessourceRepository<FinancesDto>>(
      () => RessourceRepository<FinancesDto>(
        loggingService: s1(),
        recordService: s1.get<PocketBaseService>().financesCollection,
        fromJson: FinancesDto.fromJson,
        toJson: (f) => f.toJson(),
      ),
    )

    // Blocs
    ..registerLazySingleton<BirdBreederCubit>(
      () => BirdBreederCubit(
        s1(),
        s1(),
        s1(),
        s1(),
        s1(),
        s1(),
        s1(),
        s1(),
        s1(),
        s1(),
      ),
    )

    // External
    ..registerLazySingleton<RouteObserver<ModalRoute<void>>>(
      RouteObserver<ModalRoute<void>>.new,
    );
}
