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
  static Future<Set<String>> referencedHashes() async {
    if (!s1.isRegistered<AppDatabase>()) return const <String>{};
    final db = s1.get<AppDatabase>();
    final rows =
        await db.customSelect('SELECT DISTINCT hash FROM bird_images').get();
    return rows.map((r) => r.read<String>('hash')).toSet();
  }
}
