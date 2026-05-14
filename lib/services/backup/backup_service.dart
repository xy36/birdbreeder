import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:birdbreeder/services/backup/models/backup_manifest.dart';
import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackupService {
  static const _dbFileName = 'birdbreeder.sqlite';
  static const _backupDirName = 'backups';
  static const _filePrefix = 'birdbreeder-';

  static const _bundleExt = '.bbb.zip';
  static const _legacyExt = '.sqlite';

  static const _manifestEntry = 'manifest.json';
  static const _dbEntry = 'db/$_dbFileName';

  /// Bump when bundle structure changes in an incompatible way.
  static const int currentFormatVersion = 1;

  static const Duration autoSnapshotInterval = Duration(hours: 24);
  static const int keepDaily = 7;
  static const int keepWeekly = 4;

  static const _prefsLastExternalKey = 'backup_last_external_at';
  static const _prefsSnoozeUntilKey = 'backup_reminder_snooze_until';
  static const Duration reminderThreshold = Duration(days: 7);
  static const Duration snoozeDuration = Duration(days: 3);

  static Future<Directory> _backupDir() async {
    final docs = await getApplicationDocumentsDirectory();
    final dir = Directory(p.join(docs.path, _backupDirName));
    if (!dir.existsSync()) {
      await dir.create(recursive: true);
    }
    return dir;
  }

  static Future<File> _dbFile() async {
    final docs = await getApplicationDocumentsDirectory();
    return File(p.join(docs.path, _dbFileName));
  }

  static String _timestamp(DateTime dt) {
    String two(int n) => n.toString().padLeft(2, '0');
    return '${dt.year}-${two(dt.month)}-${two(dt.day)}_'
        '${two(dt.hour)}-${two(dt.minute)}';
  }

  /// Create snapshot bundle of current SQLite DB. Returns the new file.
  static Future<File> createSnapshot() async {
    final logger = s1.get<LoggingService>().logger;
    final src = await _dbFile();
    if (!src.existsSync()) {
      throw StateError('Database file not found at ${src.path}');
    }

    if (s1.isRegistered<AppDatabase>()) {
      try {
        await s1
            .get<AppDatabase>()
            .customStatement('PRAGMA wal_checkpoint(FULL)');
      } on Object catch (e) {
        logger.w('WAL checkpoint failed (continuing): $e');
      }
    }

    final dir = await _backupDir();
    final target = File(
      p.join(dir.path, '$_filePrefix${_timestamp(DateTime.now())}$_bundleExt'),
    );

    await _writeBundle(dbFile: src, target: target);
    logger.i('Backup bundle created: ${target.path}');
    return target;
  }

  static Future<void> _writeBundle({
    required File dbFile,
    required File target,
  }) async {
    final manifest = BackupManifest(
      format: currentFormatVersion,
      createdAt: DateTime.now().toUtc(),
      hasImages: false,
    );

    final encoder = ZipFileEncoder()..create(target.path);
    try {
      final manifestBytes = utf8.encode(jsonEncode(manifest.toJson()));
      encoder.addArchiveFile(
        ArchiveFile(_manifestEntry, manifestBytes.length, manifestBytes),
      );
      // Stream DB into zip to avoid loading the whole file into memory.
      await encoder.addFile(dbFile, _dbEntry);
    } finally {
      await encoder.close();
    }
  }

  /// List snapshots, newest first. Includes legacy .sqlite snapshots.
  static Future<List<File>> listSnapshots() async {
    final dir = await _backupDir();
    final files = dir
        .listSync()
        .whereType<File>()
        .where(_isSnapshotFile)
        .toList()
      ..sort((a, b) => b.lastModifiedSync().compareTo(a.lastModifiedSync()));
    return files;
  }

  static bool _isSnapshotFile(File f) {
    final name = p.basename(f.path);
    if (!name.startsWith(_filePrefix)) return false;
    final lower = name.toLowerCase();
    return lower.endsWith(_bundleExt) || lower.endsWith(_legacyExt);
  }

  static Future<File?> latestSnapshot() async {
    final list = await listSnapshots();
    return list.isEmpty ? null : list.first;
  }

  /// Keep [keepDaily] newest daily snapshots + [keepWeekly] weekly snapshots
  /// (one per ISO week, oldest weeks dropped). Delete the rest.
  static Future<void> rotateSnapshots() async {
    final logger = s1.get<LoggingService>().logger;
    final all = await listSnapshots();
    if (all.isEmpty) return;

    final keep = <String>{};

    final seenDays = <String>{};
    for (final f in all) {
      final d = f.lastModifiedSync();
      final dayKey = '${d.year}-${d.month}-${d.day}';
      if (seenDays.add(dayKey)) {
        keep.add(f.path);
        if (seenDays.length >= keepDaily) break;
      }
    }

    final seenWeeks = <String>{};
    for (final f in all) {
      if (keep.contains(f.path)) continue;
      final d = f.lastModifiedSync();
      final weekKey = '${d.year}-W${_isoWeek(d)}';
      if (seenWeeks.add(weekKey)) {
        keep.add(f.path);
        if (seenWeeks.length >= keepWeekly) break;
      }
    }

    for (final f in all) {
      if (!keep.contains(f.path)) {
        try {
          await f.delete();
          logger.d('Rotated out: ${f.path}');
        } on Object catch (e) {
          logger.w('Failed to delete ${f.path}: $e');
        }
      }
    }
  }

  static int _isoWeek(DateTime date) {
    final thursday = date.add(Duration(days: 4 - date.weekday));
    final firstThursday = DateTime(thursday.year, 1, 4);
    final diff = thursday.difference(firstThursday).inDays;
    return 1 + (diff / 7).floor();
  }

  static Future<void> shareSnapshot(File file) async {
    final isBundle = file.path.toLowerCase().endsWith(_bundleExt);
    await Share.shareXFiles(
      [
        XFile(
          file.path,
          mimeType: isBundle ? 'application/zip' : 'application/vnd.sqlite3',
        ),
      ],
      subject: 'BirdBreeder Backup',
      text: 'BirdBreeder Backup vom ${_timestamp(file.lastModifiedSync())}',
    );
    await markSharedExternally();
  }

  static Future<void> markSharedExternally() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _prefsLastExternalKey,
      DateTime.now().toUtc().toIso8601String(),
    );
    await prefs.remove(_prefsSnoozeUntilKey);
  }

  static Future<void> snoozeReminder() async {
    final prefs = await SharedPreferences.getInstance();
    final until = DateTime.now().toUtc().add(snoozeDuration);
    await prefs.setString(_prefsSnoozeUntilKey, until.toIso8601String());
  }

  static Future<DateTime?> lastExternalShare() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_prefsLastExternalKey);
    if (raw == null) return null;
    return DateTime.tryParse(raw);
  }

  static Future<int?> daysSinceLastExternal() async {
    final last = await lastExternalShare();
    if (last == null) return null;
    return DateTime.now().toUtc().difference(last).inDays;
  }

  static Future<bool> shouldShowReminder() async {
    final prefs = await SharedPreferences.getInstance();

    final snoozeRaw = prefs.getString(_prefsSnoozeUntilKey);
    if (snoozeRaw != null) {
      final until = DateTime.tryParse(snoozeRaw);
      if (until != null && DateTime.now().toUtc().isBefore(until)) {
        return false;
      }
    }

    final snapshots = await listSnapshots();
    if (snapshots.isEmpty) return false;

    final last = await lastExternalShare();
    if (last == null) return true;
    return DateTime.now().toUtc().difference(last) > reminderThreshold;
  }

  /// Lets user pick a backup file. Returns the picked file or null.
  /// Accepts both new `.bbb.zip` bundles and legacy `.sqlite`/`.db` files.
  static Future<File?> pickRestoreFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null || result.files.isEmpty) return null;
    final path = result.files.single.path;
    if (path == null) return null;
    final file = File(path);
    final name = p.basename(file.path).toLowerCase();
    final ok = name.endsWith(_bundleExt) ||
        name.endsWith('.zip') ||
        name.endsWith(_legacyExt) ||
        name.endsWith('.db');
    if (!ok) {
      throw const FormatException(
        'Bitte eine .bbb.zip, .sqlite oder .db Datei auswählen',
      );
    }
    return file;
  }

  /// Overwrites the live DB (and later images) from [source]. Caller must
  /// have reset DI / closed the AppDatabase before calling, and must trigger
  /// an app restart afterwards.
  static Future<void> overwriteDatabase(File source) async {
    // Caller usually calls s1.reset() first, so do NOT touch GetIt here.
    final dst = await _dbFile();

    for (final suffix in const ['-wal', '-shm']) {
      final side = File('${dst.path}$suffix');
      if (side.existsSync()) {
        try {
          await side.delete();
        } on Object catch (_) {
          // ignore; best effort
        }
      }
    }

    final lower = source.path.toLowerCase();
    final isZip = lower.endsWith(_bundleExt) || lower.endsWith('.zip');

    if (!isZip) {
      await source.copy(dst.path);
      return;
    }

    final bytes = await source.readAsBytes();
    final archive = ZipDecoder().decodeBytes(bytes);

    final manifest = _readManifest(archive);
    if (manifest.format > currentFormatVersion) {
      throw FormatException(
        'Backup-Format ${manifest.format} wird nicht unterstützt. '
        'Bitte App aktualisieren.',
      );
    }

    final dbArchiveFile =
        archive.findFile(_dbEntry) ?? archive.findFile(_dbFileName);
    if (dbArchiveFile == null) {
      throw const FormatException('Backup enthält keine Datenbank-Datei.');
    }
    final dbBytes = dbArchiveFile.content as List<int>;
    await dst.writeAsBytes(dbBytes, flush: true);

    await _restoreImagesIfAny(archive, manifest);
  }

  static BackupManifest _readManifest(Archive archive) {
    final manifestFile = archive.findFile(_manifestEntry);
    if (manifestFile == null) {
      // Tolerate older zips without manifest: assume current format, no images.
      return BackupManifest(
        format: currentFormatVersion,
        createdAt: DateTime.now().toUtc(),
        hasImages: false,
      );
    }
    final raw = utf8.decode(manifestFile.content as List<int>);
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return BackupManifest.fromJson(json);
  }

  /// Stub for future image restore. Currently no-op.
  static Future<void> _restoreImagesIfAny(
    Archive archive,
    BackupManifest manifest,
  ) async {
    if (!manifest.hasImages) return;
    // Wird gefüllt sobald Bilder-Feature live ist.
  }

  static Future<bool> shouldAutoSnapshot() async {
    final latest = await latestSnapshot();
    if (latest == null) return true;
    final age = DateTime.now().difference(latest.lastModifiedSync());
    return age >= autoSnapshotInterval;
  }
}
