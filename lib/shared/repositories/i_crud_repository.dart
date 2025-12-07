import 'package:async/async.dart';

abstract class ICrudRepository<TModel, TDto> {
  /// Create new
  Future<Result<TModel>> create(TModel obj);

  /// Returns a [TModel] with the given id.
  Future<Result<TModel>> getById(String id);

  /// Returns a list of all []s.
  Future<Result<List<TModel>>> getAll();

  /// Updates the [TModel].
  Future<Result<TModel>> update(String id, TModel obj);

  /// Delete the [TModel] with the given id.
  Future<Result<void>> delete(String id);
}
