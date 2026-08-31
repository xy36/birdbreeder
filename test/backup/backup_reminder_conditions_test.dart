import 'dart:io';

import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:drift/drift.dart' show Value;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _FakePathProvider extends PathProviderPlatform
    with MockPlatformInterfaceMixin {
  _FakePathProvider(this.root);
  final String root;

  @override
  Future<String?> getApplicationDocumentsPath() async => root;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Directory tempDir;
  late AppDatabase db;

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('reminder_conditions_test');
    PathProviderPlatform.instance = _FakePathProvider(tempDir.path);
    SharedPreferences.setMockInitialValues({});
    db = AppDatabase.forTesting(NativeDatabase.memory());
    s1.registerSingleton<AppDatabase>(db);
  });

  tearDown(() async {
    await db.close();
    await s1.reset();
    if (tempDir.existsSync()) await tempDir.delete(recursive: true);
  });

  /// Writes a snapshot file aged [age] into the backup directory.
  Future<File> writeSnapshot(Duration age) async {
    final dir = Directory(p.join(tempDir.path, 'backups'));
    if (!dir.existsSync()) await dir.create(recursive: true);
    final stamp = DateTime.now().subtract(age).millisecondsSinceEpoch;
    return File(p.join(dir.path, 'birdbreeder-$stamp.bbb.zip'))
      ..writeAsBytesSync([0x50, 0x4B, 0x03, 0x04])
      ..setLastModifiedSync(DateTime.now().subtract(age));
  }

  Future<void> addBird() => db.into(db.birds).insert(
        const BirdsCompanion(
          id: Value('bird-1'),
          ringnumber: Value('A-1'),
        ),
      );

  group('installedAt', () {
    test('a fresh install with no snapshots is dated now', () async {
      final resolved = await BackupService.installedAt();

      expect(
        DateTime.now().toUtc().difference(resolved).inSeconds,
        lessThan(5),
      );
    });

    test('an existing install is backdated to its oldest snapshot', () async {
      await writeSnapshot(const Duration(days: 40));
      await writeSnapshot(const Duration(days: 3));

      final resolved = await BackupService.installedAt();

      expect(
        DateTime.now().toUtc().difference(resolved).inDays,
        closeTo(40, 1),
      );
    });

    test('the resolved value is persisted and reused', () async {
      await writeSnapshot(const Duration(days: 40));
      final first = await BackupService.installedAt();

      // A later call must not re-derive from snapshots — rotation prunes old
      // ones, which would silently make the installation look younger.
      final second = await BackupService.installedAt();

      expect(second, first);
    });
  });

  group('shouldShowReminder', () {
    test('stays quiet on a fresh install even after an auto-snapshot',
        () async {
      await addBird();
      await writeSnapshot(Duration.zero);

      expect(await BackupService.shouldShowReminder(), isFalse);
    });

    test('stays quiet while the database holds no birds', () async {
      await writeSnapshot(const Duration(days: 40));

      expect(await BackupService.shouldShowReminder(), isFalse);
    });

    test('fires once the install is past the grace window', () async {
      await addBird();
      await writeSnapshot(const Duration(days: 40));

      expect(await BackupService.shouldShowReminder(), isTrue);
    });

    test('stays quiet right after an external share', () async {
      await addBird();
      await writeSnapshot(const Duration(days: 40));
      await BackupService.markSharedExternally();

      expect(await BackupService.shouldShowReminder(), isFalse);
    });

    test('stays quiet while snoozed', () async {
      await addBird();
      await writeSnapshot(const Duration(days: 40));
      await BackupService.snoozeReminder();

      expect(await BackupService.shouldShowReminder(), isFalse);
    });
  });
}
