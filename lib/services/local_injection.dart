// ──────────────────────────────────────────
// Local mode (Drift/SQLite)
// ──────────────────────────────────────────

import 'package:birdbreeder/mapper/local/local_bird_mapper.dart';
import 'package:birdbreeder/mapper/local/local_breeding_pair_mapper.dart';
import 'package:birdbreeder/mapper/local/local_brood_mapper.dart';
import 'package:birdbreeder/mapper/local/local_cage_mapper.dart';
import 'package:birdbreeder/mapper/local/local_color_mapper.dart';
import 'package:birdbreeder/mapper/local/local_contact_mapper.dart';
import 'package:birdbreeder/mapper/local/local_egg_mapper.dart';
import 'package:birdbreeder/mapper/local/local_finances_category_mapper.dart';
import 'package:birdbreeder/mapper/local/local_finances_mapper.dart';
import 'package:birdbreeder/mapper/local/local_species_mapper.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/authentication/local_authentication_service.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/repositories/i_crud_repository.dart';
import 'package:birdbreeder/shared/repositories/local_resource_repository.dart';

void registerLocal() {
  final db = local_db.AppDatabase();
  s1
    ..registerSingleton(db)
    ..registerLazySingleton<IAuthenticationService>(
      LocalAuthenticationService.new,
    );

  LocalResourceRepository<TModel, TDto> localRepo<TModel, TDto>({
    required String tableName,
    required TDto Function(Map<String, dynamic>) fromJson,
    required Map<String, dynamic> Function(TDto) toJson,
    required TModel Function(TDto) fromDto,
    required TDto Function(TModel) toDto,
    Set<String> boolColumns = const {},
  }) {
    return LocalResourceRepository<TModel, TDto>(
      database: db,
      tableName: tableName,
      loggingService: s1(),
      fromJson: fromJson,
      toJson: toJson,
      fromDto: fromDto,
      toDto: toDto,
      boolColumns: boolColumns,
    );
  }

  s1
    ..registerLazySingleton<ICrudRepository<Bird>>(
      () => localRepo<Bird, local_db.Bird>(
        tableName: 'birds',
        fromJson: local_db.Bird.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => LocalBirdMapper().convert<local_db.Bird, Bird>(dto),
        toDto: (m) => LocalBirdMapper().convert<Bird, local_db.Bird>(m),
        boolColumns: {'unknown_lifecycle'},
      ),
    )
    ..registerLazySingleton<ICrudRepository<BreedingPair>>(
      () => localRepo<BreedingPair, local_db.BreedingPair>(
        tableName: 'breeding_pairs',
        fromJson: local_db.BreedingPair.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => LocalBreedingPairMapper()
            .convert<local_db.BreedingPair, BreedingPair>(dto),
        toDto: (m) => LocalBreedingPairMapper()
            .convert<BreedingPair, local_db.BreedingPair>(m),
      ),
    )
    ..registerLazySingleton<ICrudRepository<Brood>>(
      () => localRepo<Brood, local_db.Brood>(
        tableName: 'broods',
        fromJson: local_db.Brood.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) =>
            LocalBroodMapper().convert<local_db.Brood, Brood>(dto),
        toDto: (m) => LocalBroodMapper().convert<Brood, local_db.Brood>(m),
      ),
    )
    ..registerLazySingleton<ICrudRepository<Cage>>(
      () => localRepo<Cage, local_db.Cage>(
        tableName: 'cages',
        fromJson: local_db.Cage.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => LocalCageMapper().convert<local_db.Cage, Cage>(dto),
        toDto: (m) => LocalCageMapper().convert<Cage, local_db.Cage>(m),
      ),
    )
    ..registerLazySingleton<ICrudRepository<Species>>(
      () => localRepo<Species, local_db.SpeciesTableData>(
        tableName: 'species',
        fromJson: local_db.SpeciesTableData.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => LocalSpeciesMapper()
            .convert<local_db.SpeciesTableData, Species>(dto),
        toDto: (m) =>
            LocalSpeciesMapper().convert<Species, local_db.SpeciesTableData>(m),
      ),
    )
    ..registerLazySingleton<ICrudRepository<BirdColor>>(
      () => localRepo<BirdColor, local_db.BirdColor>(
        tableName: 'bird_colors',
        fromJson: local_db.BirdColor.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) =>
            LocalColorMapper().convert<local_db.BirdColor, BirdColor>(dto),
        toDto: (m) =>
            LocalColorMapper().convert<BirdColor, local_db.BirdColor>(m),
      ),
    )
    ..registerLazySingleton<ICrudRepository<Contact>>(
      () => localRepo<Contact, local_db.Contact>(
        tableName: 'contacts',
        fromJson: local_db.Contact.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) =>
            LocalContactMapper().convert<local_db.Contact, Contact>(dto),
        toDto: (m) =>
            LocalContactMapper().convert<Contact, local_db.Contact>(m),
        boolColumns: {'is_app_user'},
      ),
    )
    ..registerLazySingleton<ICrudRepository<Egg>>(
      () => localRepo<Egg, local_db.Egg>(
        tableName: 'eggs',
        fromJson: local_db.Egg.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => LocalEggMapper().convert<local_db.Egg, Egg>(dto),
        toDto: (m) => LocalEggMapper().convert<Egg, local_db.Egg>(m),
      ),
    )
    ..registerLazySingleton<ICrudRepository<FinanceCategory>>(
      () => localRepo<FinanceCategory, local_db.FinanceCategory>(
        tableName: 'finance_categories',
        fromJson: local_db.FinanceCategory.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) => LocalFinancesCategoryMapper()
            .convert<local_db.FinanceCategory, FinanceCategory>(dto),
        toDto: (m) => LocalFinancesCategoryMapper()
            .convert<FinanceCategory, local_db.FinanceCategory>(m),
      ),
    )
    ..registerLazySingleton<ICrudRepository<Finance>>(
      () => localRepo<Finance, local_db.Finance>(
        tableName: 'finances',
        fromJson: local_db.Finance.fromJson,
        toJson: (d) => d.toJson(),
        fromDto: (dto) =>
            LocalFinanceMapper().convert<local_db.Finance, Finance>(dto),
        toDto: (m) =>
            LocalFinanceMapper().convert<Finance, local_db.Finance>(m),
      ),
    )

    // Cubit — depends only on ICrudRepository interfaces
    ..registerLazySingleton(
      () => BirdBreederCubit(
        s1<ICrudRepository<BreedingPair>>(),
        s1<ICrudRepository<Bird>>(),
        s1<ICrudRepository<Contact>>(),
        s1<ICrudRepository<BirdColor>>(),
        s1<ICrudRepository<Cage>>(),
        s1<ICrudRepository<Species>>(),
        s1<ICrudRepository<Brood>>(),
        s1<ICrudRepository<Egg>>(),
        s1<ICrudRepository<Finance>>(),
        s1<ICrudRepository<FinanceCategory>>(),
      )..initialLoad(),
    );
}
