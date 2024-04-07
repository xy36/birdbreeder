import 'package:birdbreeder/injection.dart';
import 'package:birdbreeder/logging_service.dart';

/// Cache class to store data of List<[T]> from Firestore
/// To redued the number of reads from Firestore we store the data in memory
/// and update it when needed or when the data is too old.
class FirestoreCache<T> {
  FirestoreCache({required this.hasSameId});

  final cacheLogger = s1.get<LoggingService>().logger;

  /// Function to compare if two objects have the same id
  final bool Function({required T obj, required T cached}) hasSameId;

  /// Last time the data was fetched from Firestore and the cache was updated.
  DateTime get lastUpdated => _lastUpdated;

  /// List of cached objects
  List<T> get cache {
    cacheLogger.verbose(
      '[$runtimeType] Cache requested with ${_cache.length} objects',
    );
    return _cache;
  }

  DateTime _lastUpdated = DateTime(1970);

  /// List of cached objects
  List<T> _cache = [];

  /// Add or update the cache with the given objects
  /// If the object is already in the cache it will be updated, for this, the [hasSameId] function is used.
  void addOrUpdateCache(List<T> objects) {
    if (objects.isEmpty) return;

    var updatedObjects = 0;

    _cache
      ..removeWhere(
        (cached) => objects.any((obj) {
          if (hasSameId(obj: obj, cached: cached)) {
            updatedObjects++;
            return true;
          } else {
            return false;
          }
        }),
      )
      ..addAll(objects);

    cacheLogger.verbose(
      '[$runtimeType] Updated $updatedObjects objects, added ${objects.length - updatedObjects} objects to cache',
    );

    _lastUpdated = DateTime.now();
  }

  /// Remove the given objects from the cache
  void removeFromCache(List<T> objects) {
    if (objects.isEmpty) return;

    var removedObjects = 0;

    _cache.removeWhere(
      (cached) => objects.any((obj) {
        if (hasSameId(obj: obj, cached: cached)) {
          removedObjects++;
          return true;
        } else {
          return false;
        }
      }),
    );

    cacheLogger
        .verbose('[$runtimeType] Removed $removedObjects objects from cache');
  }

  /// Clear the cache
  void clearCache() {
    _cache = [];
  }
}
