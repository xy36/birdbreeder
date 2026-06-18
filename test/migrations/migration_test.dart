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
}
