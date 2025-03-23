import 'package:async/async.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/shared/repositories/i_crud_repository.dart';
import 'package:pocketbase/pocketbase.dart';

class RessourceRepository<T> implements ICrudRepository<T> {
  RessourceRepository({
    required this.loggingService,
    required this.toJson,
    required this.fromJson,
    required this.recordService,
  });

  final RecordService recordService;
  final LoggingService loggingService;
  final Map<String, dynamic> Function(T obj) toJson;
  final T Function(Map<String, dynamic> json) fromJson;

  @override
  Future<Result<T>> create(T obj) async {
    try {
      final result = await recordService.create(body: toJson(obj));

      return Result.value(fromJson(result.toJson()));
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(String id) async {
    try {
      await recordService.delete(id);

      return Result.value(null);
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<T>>> getAll() async {
    try {
      final result = await recordService.getFullList();

      return Result.value(
        result.map((e) => fromJson(e.toJson())).toList(),
      );
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<T>> getById(String id) async {
    try {
      final result = await recordService.getOne(id);

      return Result.value(fromJson(result.toJson()));
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<T>> update(String id, T obj) async {
    try {
      final result = await recordService.update(id, body: toJson(obj));

      return Result.value(fromJson(result.toJson()));
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }
}
