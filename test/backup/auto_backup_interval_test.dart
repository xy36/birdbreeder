import 'dart:io';

import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:flutter_test/flutter_test.dart';
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

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('auto_interval_test');
    PathProviderPlatform.instance = _FakePathProvider(tempDir.path);
    SharedPreferences.setMockInitialValues({});
  });

  tearDown(() async {
    if (tempDir.existsSync()) await tempDir.delete(recursive: true);
  });

  group('AutoBackupInterval', () {
    test('fromName falls back to daily for unknown/null', () {
      expect(AutoBackupInterval.fromName(null), AutoBackupInterval.daily);
      expect(AutoBackupInterval.fromName('bogus'), AutoBackupInterval.daily);
      expect(
        AutoBackupInterval.fromName('weekly'),
        AutoBackupInterval.weekly,
      );
    });

    test('minAge maps intervals correctly', () {
      expect(AutoBackupInterval.everyLaunch.minAge, Duration.zero);
      expect(AutoBackupInterval.daily.minAge, const Duration(days: 1));
      expect(AutoBackupInterval.weekly.minAge, const Duration(days: 7));
      expect(AutoBackupInterval.off.minAge, isNull);
    });
  });

  group('BackupService auto interval', () {
    test('defaults to daily and round-trips through prefs', () async {
      expect(await BackupService.getAutoInterval(), AutoBackupInterval.daily);
      await BackupService.setAutoInterval(AutoBackupInterval.weekly);
      expect(await BackupService.getAutoInterval(), AutoBackupInterval.weekly);
    });

    test('shouldAutoSnapshot is false when interval is off', () async {
      await BackupService.setAutoInterval(AutoBackupInterval.off);
      expect(await BackupService.shouldAutoSnapshot(), isFalse);
    });

    test('shouldAutoSnapshot is true when no snapshot exists yet', () async {
      await BackupService.setAutoInterval(AutoBackupInterval.daily);
      expect(await BackupService.shouldAutoSnapshot(), isTrue);
    });
  });
}
