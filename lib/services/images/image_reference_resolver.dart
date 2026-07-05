/// Resolves which image hashes the live database currently references.
///
/// This is the single source of truth used by both the backup/cloud sync
/// (which uploads only referenced blobs) and `ImageStore.gc` (which deletes
/// unreferenced blobs). Keeping it in one place means the day birds gain an
/// image column, only this method changes and the rest of the pipeline keeps
/// working.
///
/// Today no table stores image hashes, so this returns an empty set. Once a
/// column such as `birds.image_hash` exists, scan it here (and any other
/// `*_hash` columns) and return the union.
class ImageReferenceResolver {
  const ImageReferenceResolver._();

  /// The set of image hashes referenced by rows in the current database.
  static Future<Set<String>> referencedHashes() async {
    // No image-bearing columns exist yet — see class doc.
    return const <String>{};
  }
}
