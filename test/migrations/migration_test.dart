import 'package:birdbreeder/services/database/app_database.dart';
import 'package:drift_dev/api/migrations_native.dart';
import 'package:flutter_test/flutter_test.dart';

import 'generated/schema.dart';

/// Verifies that the Drift schema migrations produce the expected schema and
/// keep existing data intact.
///
/// Baseline: v1 is the first tracked schema version. For each new schema
/// version add a `from N to N+1` case below — see the migration workflow doc
/// in `app_database.dart`.
void main() {
  late SchemaVerifier verifier;

  setUpAll(() {
    verifier = SchemaVerifier(GeneratedHelper());
  });

  test('migrating from v1 yields the expected schema', () async {
    final connection = await verifier.startAt(1);
    final db = AppDatabase.forTesting(connection);
    addTearDown(db.close);

    await verifier.migrateAndValidate(db, 1);
  });

  test('migrating from v1 to v2 yields the expected schema', () async {
    final connection = await verifier.startAt(1);
    final db = AppDatabase.forTesting(connection);
    addTearDown(db.close);

    await verifier.migrateAndValidate(db, 2);
  });

  test('migrating from v2 to v3 yields the expected schema', () async {
    final connection = await verifier.startAt(2);
    final db = AppDatabase.forTesting(connection);
    addTearDown(db.close);

    await verifier.migrateAndValidate(db, 3);
  });

  test('migrating from v3 to v4 yields the expected schema', () async {
    final connection = await verifier.startAt(3);
    final db = AppDatabase.forTesting(connection);
    addTearDown(db.close);

    await verifier.migrateAndValidate(db, 4);
  });

  test('migrating from v4 to v5 yields the expected schema', () async {
    final connection = await verifier.startAt(4);
    final db = AppDatabase.forTesting(connection);
    addTearDown(db.close);

    await verifier.migrateAndValidate(db, 5);
  });

  test('migrating from v5 to v6 yields the expected schema', () async {
    final connection = await verifier.startAt(5);
    final db = AppDatabase.forTesting(connection);
    addTearDown(db.close);

    await verifier.migrateAndValidate(db, 6);
  });

  test('migrating from v6 to v7 yields the expected schema', () async {
    final connection = await verifier.startAt(6);
    final db = AppDatabase.forTesting(connection);
    addTearDown(db.close);

    await verifier.migrateAndValidate(db, 7);
  });

  // Restoring a backup writes its raw SQLite file over the live database, so
  // the next launch opens a file that may be several versions behind. These
  // cover the multi-step jumps `stepByStep` then has to make in one go.
  for (final from in const [1, 2, 3, 4, 5]) {
    test('restoring a v$from backup migrates all the way to v7', () async {
      final connection = await verifier.startAt(from);
      final db = AppDatabase.forTesting(connection);
      addTearDown(db.close);

      await verifier.migrateAndValidate(db, 7);
    });
  }
}
