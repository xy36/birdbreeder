/// Cache class to store data of List<[T]> from Firestore
/// To redued the number of reads from Firestore we store the data in memory
/// and update it when needed or when the data is too old.
class FirestoreCache<T> {
  FirestoreCache({required this.hasSameId});

  /// Function to compare if two objects have the same id
  final bool Function({required T obj, required T cached}) hasSameId;

  /// Last time the data was fetched from Firestore and the cache was updated.
  DateTime get lastUpdated => _lastUpdated;

  /// List of cached objects
  List<T> get cache => _cache;

  DateTime _lastUpdated = DateTime(1970);

  /// List of cached objects
  List<T> _cache = [];

  /// Add or update the cache with the given objects
  /// If the object is already in the cache it will be updated, for this, the [hasSameId] function is used.
  void addOrUpdateCache(List<T> objects) {
    _cache
      ..removeWhere(
        (cached) => objects.any((obj) => hasSameId(obj: obj, cached: cached)),
      )
      ..addAll(objects);

    _lastUpdated = DateTime.now();
  }

  /// Remove the given objects from the cache
  void removeFromCache(List<T> objects) {
    _cache.removeWhere(
      (cached) => objects.any((obj) => hasSameId(obj: obj, cached: cached)),
    );
  }

  /// Clear the cache
  void clearCache() {
    _cache = [];
  }
}
