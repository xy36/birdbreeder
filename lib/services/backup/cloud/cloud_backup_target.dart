import 'dart:io';

/// Why a cloud target is (un)available, so the UI can prompt the right fix.
enum CloudUnavailableReason {
  /// iOS: the user is not signed into iCloud / iCloud Drive is off.
  notSignedIn,

  /// Android: no folder chosen yet, or the persisted permission was revoked.
  noLocation,

  /// The platform has no native cloud folder support.
  unsupported,

  /// An unexpected error while probing availability.
  error,
}

/// Result of probing whether the cloud target can be used right now.
class CloudAvailability {
  const CloudAvailability.available()
      : available = true,
        reason = null;
  const CloudAvailability.unavailable(this.reason) : available = false;

  final bool available;
  final CloudUnavailableReason? reason;
}

/// A chosen cloud destination (an iCloud container or a SAF tree).
class CloudLocation {
  const CloudLocation({required this.id, required this.displayName});

  /// Stable identifier — the container id (iOS) or tree URI (Android).
  final String id;

  /// Human-readable name for the settings UI.
  final String displayName;
}

/// A backup bundle present in the cloud folder.
class CloudEntry {
  const CloudEntry({
    required this.name,
    required this.size,
    required this.modifiedAt,
    required this.remoteRef,
  });

  final String name;
  final int size;
  final DateTime modifiedAt;

  /// Backend handle used to fetch this entry — the relative path (iOS) or the
  /// document URI (Android).
  final String remoteRef;
}

/// Abstraction over a user-owned native cloud folder.
///
/// Implemented by `ICloudBackupTarget` (iOS iCloud Drive container) and
/// `SafBackupTarget` (Android Storage Access Framework). The
/// `CloudBackupManager` façade picks one per platform; callers stay
/// platform-agnostic.
abstract class CloudBackupTarget {
  /// Whether the cloud is reachable right now (signed in / permission granted).
  Future<CloudAvailability> availability();

  /// Interactively pick/confirm the destination and persist it.
  ///
  /// iOS: the container is implicit, so this just confirms availability and
  /// returns a stable location. Android: launches the SAF folder picker.
  Future<CloudLocation?> chooseLocation();

  /// Uploads a snapshot bundle to the cloud, overwriting any same-named file.
  Future<void> uploadSnapshot(File local, {required String remoteName});

  /// Snapshot bundles in the cloud folder, newest first.
  Future<List<CloudEntry>> listSnapshots();

  /// Downloads [entry] to [dest] and returns it.
  Future<File> downloadSnapshot(CloudEntry entry, {required File dest});

  // ---- image infrastructure ----

  /// Hashes already known to live under `images/` in the cloud (for dedup).
  ///
  /// Backends choose the cheapest source: iCloud derives it from its single
  /// `gather()` call; SAF reads the `images/index.json` hash index.
  Future<Set<String>> listImageHashes();

  /// Records [hashes] as successfully uploaded so the next sync can skip them
  /// without a full directory listing. No-op where listing is already cheap.
  Future<void> recordUploadedImages(Set<String> hashes);

  /// Uploads a single image blob as `images/<hash>` if not already present.
  Future<void> uploadImage(String hash, File local);

  /// Downloads the image blob `images/<hash>` to [dest].
  Future<File> downloadImage(String hash, {required File dest});
}
