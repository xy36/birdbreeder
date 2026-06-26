import 'dart:io';

import 'package:birdbreeder/services/database/schema_versions.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

// ──────────────────────────────────────────
// Table definitions
// ──────────────────────────────────────────

class Birds extends Table {
  TextColumn get id => text()();
  TextColumn get ringnumber => text().nullable()();
  TextColumn get species => text().nullable()();
  TextColumn get color => text().nullable()();
  TextColumn get sex => text().withDefault(const Constant('unknown'))();
  TextColumn get father => text().nullable()();
  TextColumn get mother => text().nullable()();
  TextColumn get cage => text().nullable()();
  TextColumn get brood => text().nullable()();
  DateTimeColumn get laidAt => dateTime().nullable()();
  DateTimeColumn get hatchedAt => dateTime().nullable()();
  DateTimeColumn get fledgedAt => dateTime().nullable()();
  DateTimeColumn get bornAt => dateTime().nullable()();
  DateTimeColumn get diedAt => dateTime().nullable()();
  TextColumn get saleStatus =>
      text().withDefault(const Constant('notForSale'))();
  DateTimeColumn get listedAt => dateTime().nullable()();
  DateTimeColumn get soldAt => dateTime().nullable()();
  RealColumn get askingPrice => real().nullable()();
  RealColumn get finalPrice => real().nullable()();
  DateTimeColumn get boughtAt => dateTime().nullable()();
  RealColumn get boughtPrice => real().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get boughtFrom => text().nullable()();
  TextColumn get soldTo => text().nullable()();
  TextColumn get owner => text().nullable()();
  TextColumn get breeder => text().nullable()();
  BoolColumn get unknownLifecycle => boolean().nullable()();
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class BreedingPairs extends Table {
  TextColumn get id => text()();
  TextColumn get father => text()();
  TextColumn get mother => text()();
  TextColumn get status => text()();
  TextColumn get cage => text().nullable()();
  DateTimeColumn get start => dateTime().nullable()();
  DateTimeColumn get end => dateTime().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Broods extends Table {
  TextColumn get id => text()();
  TextColumn get breedingPair => text().nullable()();
  TextColumn get cage => text().nullable()();
  DateTimeColumn get start => dateTime().nullable()();
  DateTimeColumn get end => dateTime().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Eggs extends Table {
  TextColumn get id => text()();
  TextColumn get brood => text()();
  IntColumn get number => integer()();
  DateTimeColumn get laidAt => dateTime()();
  DateTimeColumn get hatchedAt => dateTime().nullable()();
  DateTimeColumn get fertilizedAt => dateTime().nullable()();
  DateTimeColumn get unfertilizedAt => dateTime().nullable()();
  DateTimeColumn get fledgedAt => dateTime().nullable()();
  DateTimeColumn get diedAt => dateTime().nullable()();
  TextColumn get status => text().withDefault(const Constant('laid'))();
  TextColumn get ringnumber => text().nullable()();
  TextColumn get color => text().nullable()();
  TextColumn get cage => text().nullable()();
  TextColumn get species => text().nullable()();
  TextColumn get birdId => text().nullable()();
  TextColumn get notes => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Contacts extends Table {
  TextColumn get id => text()();
  TextColumn get number => text().nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get cellPhoneNumber => text().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get firstName => text().nullable()();
  TextColumn get lastName => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get postalCode => text().nullable()();
  TextColumn get website => text().nullable()();
  BoolColumn get isAppUser => boolean().withDefault(const Constant(false))();
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Finances extends Table {
  TextColumn get id => text()();
  TextColumn get category => text()();
  TextColumn get title => text()();
  RealColumn get amount => real()();
  TextColumn get notes => text().nullable()();
  TextColumn get bird => text().nullable()();
  DateTimeColumn get date => dateTime().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class FinanceCategories extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get color => text()();
  TextColumn get kind => text()();
  TextColumn get notes => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class SpeciesTable extends Table {
  @override
  String get tableName => 'species';

  TextColumn get id => text()();
  TextColumn get name => text().nullable()();
  TextColumn get latName => text().nullable()();
  TextColumn get imageUrl => text().nullable()();
  IntColumn get incubationDays => integer().nullable()();
  IntColumn get fledgeDays => integer().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class Cages extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().nullable()();
  TextColumn get description => text().nullable()();
  IntColumn get width => integer().nullable()();
  IntColumn get height => integer().nullable()();
  IntColumn get depth => integer().nullable()();
  TextColumn get type => text().nullable()();
  TextColumn get location => text().nullable()();
  IntColumn get capacity => integer().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class BirdColors extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().nullable()();
  TextColumn get hex => text().nullable()();
  TextColumn get inheritance => text().nullable()();
  TextColumn get notes => text().nullable()();
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

// ──────────────────────────────────────────
// Database
// ──────────────────────────────────────────

@DriftDatabase(
  tables: [
    Birds,
    BreedingPairs,
    Broods,
    Eggs,
    Contacts,
    Finances,
    FinanceCategories,
    SpeciesTable,
    Cages,
    BirdColors,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  /// Connects to an explicit executor. Used by migration tests.
  AppDatabase.forTesting(super.e);

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) => m.createAll(),
        onUpgrade: stepByStep(
          from1To2: (m, schema) async {
            await m.addColumn(schema.eggs, schema.eggs.unfertilizedAt);
          },
          from2To3: (m, schema) async {
            await m.addColumn(schema.eggs, schema.eggs.diedAt);
          },
        ),
      );
}

// ──────────────────────────────────────────
// Schema-Migration: Workflow for DB Column Changes
// ──────────────────────────────────────────
//
// Only real Drift-`Table` columns need a migration. In-memory fields
// (e.g. `BirdFilter`, computed getters) are irrelevant. Workflow when
// changing one of the tables above:
//
//   1. Change column in the Table class (e.g. new `TextColumn`).
//   2. Increment `schemaVersion` by 1.
//   3. fvm dart run build_runner build --delete-conflicting-outputs
//   4. fvm dart run drift_dev schema dump \
//        lib/services/database/app_database.dart drift_schemas/
//   5. fvm dart run drift_dev schema steps \
//        drift_schemas/ lib/services/database/schema_versions.dart
//   6. In the newly generated `stepByStep(...)` fill the fromNToM callback,
//      e.g. `await m.addColumn(schema.birds, schema.birds.newField);`.
//   7. fvm dart run drift_dev schema generate \
//        drift_schemas/ test/migrations/generated/
//   8. Add migrations test for N→M, fvm flutter test test/migrations.

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'birdbreeder.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
