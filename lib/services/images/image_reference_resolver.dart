import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/injection.dart';

/// Resolves which image hashes the live database currently references.
///
/// This is the single source of truth used by both the backup/cloud sync
/// (which uploads only referenced blobs) and `ImageStore.gc` (which deletes
/// unreferenced blobs). Queried straight from the database so it stays correct
/// regardless of cubit/DI state (e.g. right after a restore).
class ImageReferenceResolver {
  const ImageReferenceResolver._();

  /// The set of image hashes referenced by rows in the current database.
  ///
  /// Every table that stores an ImageStore hash has to appear here. A blob
  /// missing from this set is treated as an orphan: `ImageStore.gc` deletes it
  /// once the grace window passes and the cloud sync never uploads it, so it
  /// vanishes silently on the next restore.
  static Future<Set<String>> referencedHashes() async {
    if (!s1.isRegistered<AppDatabase>()) return const <String>{};
    final db = s1.get<AppDatabase>();
    final rows = await db
        .customSelect(
          'SELECT DISTINCT hash FROM bird_images '
          'UNION '
          'SELECT DISTINCT logo_hash AS hash FROM pdf_header_profiles '
          'WHERE logo_hash IS NOT NULL',
        )
        .get();
    return rows.map((r) => r.read<String>('hash')).toSet();
  }
}
