import 'dart:io';

import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:birdbreeder/services/backup/cloud/icloud_backup_target.dart';
import 'package:birdbreeder/services/backup/cloud/saf_backup_target.dart';
import 'package:birdbreeder/services/backup/models/backup_manifest.dart';
import 'package:birdbreeder/services/images/image_reference_resolver.dart';
import 'package:birdbreeder/services/images/image_store.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Outcome of a cloud sync attempt.
enum CloudSyncStatus { synced, skipped, unavailable, failed }

/// Result of [CloudBackupManager.syncSnapshot].
class CloudSyncResult {
  const CloudSyncResult(this.status, {this.reason, this.error});

  final CloudSyncStatus status;
  final CloudUnavailableReason? reason;
  final String? error;
}

/// Platform-agnostic façade over the native cloud folder backends.
///
/// Chooses the right [CloudBackupTarget] per platform, holds the enabled state
/// and (on Android) the persisted tree URI, and orchestrates the
/// images-first-then-snapshot upload flow. Depends on [BackupService]/
/// [ImageStore] — never the reverse — so callers fire the sync hook from
/// bootstrap and the cubits, keeping the dependency direction clean.
class CloudBackupManager {
  const CloudBackupManager._();

  static const _prefsEnabledKey = 'cloud_backup_enabled';
  static const _prefsSafUriKey = 'cloud_backup_saf_uri';
  static const _prefsLocationNameKey = 'cloud_backup_location_name';
  static const _prefsLastSyncKey = 'cloud_backup_last_sync_at';

  /// Whether this platform has a native cloud-folder backend.
  static bool get isSupported => Platform.isIOS || Platform.isAndroid;

  static Future<bool> isEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_prefsEnabledKey) ?? false;
  }

  static Future<void> setEnabled(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_prefsEnabledKey, value);
  }

  static Future<String?> locationName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_prefsLocationNameKey);
  }

  static Future<DateTime?> lastSyncAt() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_prefsLastSyncKey);
    return raw == null ? null : DateTime.tryParse(raw);
  }

  static Future<CloudBackupTarget> _target() async {
    if (Platform.isIOS) return const ICloudBackupTarget();
    final prefs = await SharedPreferences.getInstance();
    return SafBackupTarget(rootUri: prefs.getString(_prefsSafUriKey));
  }

  static Future<CloudAvailability> availability() async =>
      (await _target()).availability();

  /// Interactively pick the cloud destination and persist it.
  static Future<CloudLocation?> chooseLocation() async {
    final target = await _target();
    final location = await target.chooseLocation();
    if (location == null) return null;
    final prefs = await SharedPreferences.getInstance();
    if (Platform.isAndroid) {
      await prefs.setString(_prefsSafUriKey, location.id);
    }
    await prefs.setString(_prefsLocationNameKey, location.displayName);
    return location;
  }

  /// Uploads [snapshot] and any missing referenced image blobs to the cloud.
  ///
  /// Images go first and incrementally: only hashes absent from the cloud are
  /// uploaded, so blobs are never duplicated. On success the snapshot counts as
  /// an external backup (reminder resets).
  static Future<CloudSyncResult> syncSnapshot(File snapshot) async {
    if (!isSupported || !await isEnabled()) {
      return const CloudSyncResult(CloudSyncStatus.skipped);
    }
    try {
      final target = await _target();
      final availability = await target.availability();
      if (!availability.available) {
        return CloudSyncResult(
          CloudSyncStatus.unavailable,
          reason: availability.reason,
        );
      }

      await _uploadMissingImages(target);
      await target.uploadSnapshot(
        snapshot,
        remoteName: p.basename(snapshot.path),
      );

      await BackupService.markSharedExternally();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        _prefsLastSyncKey,
        DateTime.now().toUtc().toIso8601String(),
      );
      return const CloudSyncResult(CloudSyncStatus.synced);
    } on Object catch (e) {
      return CloudSyncResult(CloudSyncStatus.failed, error: e.toString());
    }
  }

  static Future<void> _uploadMissingImages(CloudBackupTarget target) async {
    final referenced = await ImageReferenceResolver.referencedHashes();
    if (referenced.isEmpty) return;
    final remote = await target.listImageHashes();
    final uploaded = <String>{};
    for (final hash in referenced.difference(remote)) {
      final blob = await ImageStore.get(hash);
      if (blob != null) {
        await target.uploadImage(hash, blob);
        // Record only after a successful upload so a failed one is retried
        // next sync instead of being wrongly marked present.
        uploaded.add(hash);
      }
    }
    if (uploaded.isNotEmpty) {
      await target.recordUploadedImages(uploaded);
    }
  }

  static Future<List<CloudEntry>> listRemoteSnapshots() async {
    if (!isSupported) return const [];
    final target = await _target();
    // Guard the Android SAF path: with no folder chosen yet the tree URI is
    // null and listing would throw — treat as "no cloud backups".
    final availability = await target.availability();
    if (!availability.available) return const [];
    return target.listSnapshots();
  }

  /// Downloads a cloud snapshot to a local temp file for restore.
  static Future<File> fetchForRestore(CloudEntry entry) async {
    final tmp = await getTemporaryDirectory();
    final dest = File(p.join(tmp.path, entry.name));
    return (await _target()).downloadSnapshot(entry, dest: dest);
  }

  /// After a DB restore, downloads any referenced image blobs missing locally.
  ///
  /// Each download is re-hashed and only accepted if it matches the expected
  /// hash — cloud files the user may have renamed or altered are rejected
  /// rather than trusted by filename. No-op until images exist.
  static Future<void> restoreExternalImages(List<String> hashes) async {
    if (hashes.isEmpty) return;
    final target = await _target();
    final tmp = await getTemporaryDirectory();
    for (final hash in hashes) {
      if (await ImageStore.exists(hash)) continue;
      final dest = File(p.join(tmp.path, 'img_$hash'));
      try {
        await target.downloadImage(hash, dest: dest);
        final bytes = await dest.readAsBytes();
        if (ImageStore.hashBytes(bytes) == hash) {
          await ImageStore.put(bytes);
        }
      } on Object {
        // Best effort: a missing/corrupt cloud blob must not abort restore.
      } finally {
        if (dest.existsSync()) await dest.delete();
      }
    }
  }

  /// Reads the referenced image hashes recorded in a bundle's manifest.
  static Future<List<String>> imageHashesFromBundle(File bundle) async {
    final manifest = await BackupService.readManifest(bundle);
    if (manifest == null || manifest.imageMode != ImageMode.external) {
      return const [];
    }
    return manifest.imageHashes;
  }
}
