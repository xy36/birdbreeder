import 'package:birdbreeder/mapper/local/local_species_mapper.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/shared/repositories/local_resource_repository.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

/// Regression test for the species repository's boolean handling.
///
/// SQLite stores booleans as 0/1 and the repository reads raw rows, so every
/// bool column must be listed in `boolColumns` — a missing entry crashes the
/// initial load with `type 'int' is not a subtype of type 'bool'` the moment
/// a row exists. This pins the `endangered` column to that contract.
void main() {
  late local_db.AppDatabase db;
  late LocalResourceRepository<Species, local_db.SpeciesTableData> repository;

  setUp(() {
    db = local_db.AppDatabase.forTesting(NativeDatabase.memory());
    repository = LocalResourceRepository(
      database: db,
      tableName: 'species',
      loggingService: LoggingService(),
      fromJson: local_db.SpeciesTableData.fromJson,
      toJson: (d) => d.toJson(),
      fromDto: (dto) =>
          LocalSpeciesMapper().convert<local_db.SpeciesTableData, Species>(dto),
      toDto: (m) =>
          LocalSpeciesMapper().convert<Species, local_db.SpeciesTableData>(m),
      boolColumns: {'endangered'},
    );
  });

  tearDown(() => db.close());

  test('endangered survives the create/read round trip', () async {
    final created = await repository.create(
      Species.create(name: 'Pflaumenkopfsittich', endangered: true),
    );
    final endangered = created.asValue!.value;
    expect(endangered.endangered, isTrue);

    final all = await repository.getAll();
    expect(all.asValue!.value.single.endangered, isTrue);
  });

  test('endangered defaults to false and reads back', () async {
    await repository.create(Species.create(name: 'Wellensittich'));

    final all = await repository.getAll();
    expect(all.asValue!.value.single.endangered, isFalse);
  });
}
