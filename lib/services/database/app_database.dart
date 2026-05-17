import 'dart:io';

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
  DateTimeColumn get fledgedAt => dateTime().nullable()();
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
  TextColumn get user => text().nullable()();
  DateTimeColumn get created => dateTime().nullable()();
  DateTimeColumn get updated => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class BirdColors extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().nullable()();
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

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (migrator, from, to) async {
          // Recreate all tables when upgrading from v1.
          // This drops existing data – fine during development.
          for (final table in allTables) {
            await migrator.deleteTable(table.actualTableName);
          }
          await migrator.createAll();
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'birdbreeder.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
