import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/models/bird/dtos/bird_dto.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/models/breeding/dtos/brood_dto.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/dtos/contact_dto.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/egg/dtos/egg_dto.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/finance/dtos/finance_category_dto.dart';
import 'package:birdbreeder/models/finance/dtos/finance_dto.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/dto/bird_color_dto.dart';
import 'package:birdbreeder/models/ressources/dto/cage_dto.dart';
import 'package:birdbreeder/models/ressources/dto/species_dto.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/authentication/authentication_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:birdbreeder/services/snackbar_service.dart';
import 'package:birdbreeder/services/token_storage_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/repositories/resource_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt s1 = GetIt.instance;

Future<void> initializeDependencyInjection() async {
  final prefs = await SharedPreferences.getInstance();

  s1
    ..registerSingleton(LoggingService())
    ..registerSingleton(TokenStorageService(prefs, s1()))
    ..registerSingleton(PocketBaseService())
    ..registerSingleton(SnackbarService())
    ..registerLazySingleton<IAuthenticationService>(
      () => AuthenticationService(s1(), s1()),
    );

  // -------------------------------
  // Helper to simplify repository creation
  // -------------------------------
  ResourceRepository<TModel, TDto> repo<TModel, TDto>({
    required RecordService service,
    required TDto Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> Function(TDto) toJson,
    required TModel Function(TDto) fromDto,
    required TDto Function(TModel) toDto,
  }) {
    return ResourceRepository<TModel, TDto>(
      loggingService: s1(),
      recordService: service,
      fromJson: fromJson,
      toJson: toJson,
      fromDto: fromDto,
      toDto: toDto,
    );
  }

  final pb = s1<PocketBaseService>();

  // -------------------------------
  // Register repositories
  // -------------------------------
  s1
    ..registerLazySingleton(
      () => repo<Bird, BirdDto>(
        service: pb.birdsCollection,
        fromJson: BirdDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<BreedingPair, BreedingPairDto>(
        service: pb.breedingPairCollection,
        fromJson: BreedingPairDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<Brood, BroodDto>(
        service: pb.broodsCollection,
        fromJson: BroodDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<Cage, CageDto>(
        service: pb.cagesCollection,
        fromJson: CageDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<Species, SpeciesDto>(
        service: pb.speciesCollection,
        fromJson: SpeciesDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<BirdColor, BirdColorDto>(
        service: pb.colorsCollection,
        fromJson: BirdColorDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<Contact, ContactDto>(
        service: pb.contactsCollection,
        fromJson: ContactDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<Egg, EggDto>(
        service: pb.eggsCollection,
        fromJson: EggDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<FinanceCategory, FinanceCategoryDto>(
        service: pb.financesCategoriesCollection,
        fromJson: FinanceCategoryDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )
    ..registerLazySingleton(
      () => repo<Finance, FinanceDto>(
        service: pb.financesCollection,
        fromJson: FinanceDto.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => dto.toModel(),
        toDto: (m) => m.toDto(),
      ),
    )

    // Cubit
    ..registerLazySingleton(
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

    // Navigation observer
    ..registerLazySingleton(RouteObserver<ModalRoute<void>>.new);
}
