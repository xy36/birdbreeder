import 'package:async/async.dart';

abstract class ICrudRepository<T> {
  /// Create new
  Future<Result<T>> create(T obj);

  /// Returns a [T] with the given id.
  Future<Result<T>> getById(String id);

  /// Returns a list of all [T]s.
  Future<Result<List<T>>> getAll();

  /// Updates the [T].
  Future<Result<T>> update(T obj);

  /// Delete the [T] with the given id.
  Future<Result<void>> delete(T obj);
}
