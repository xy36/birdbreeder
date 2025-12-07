import 'package:async/async.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/shared/repositories/i_crud_repository.dart';
import 'package:pocketbase/pocketbase.dart';

class ResourceRepository<TModel, TDto>
    implements ICrudRepository<TModel, TDto> {
  ResourceRepository({
    required this.loggingService,
    required this.recordService,
    required this.toJson,
    required this.fromJson,
    required this.toDto,
    required this.fromDto,
  });

  final RecordService recordService;
  final LoggingService loggingService;

  final Map<String, dynamic> Function(TDto obj) toJson;
  final TDto Function(Map<String, dynamic> json) fromJson;

  final TDto Function(TModel obj) toDto;
  final TModel Function(TDto dto) fromDto;

  // --------------------------
  // Helpers
  // --------------------------

  TModel _mapRecordToDomain(RecordModel record) {
    return fromDto(fromJson(record.toJson()));
  }

  // --------------------------
  // CRUD
  // --------------------------

  @override
  Future<Result<TModel>> create(TModel obj) async {
    try {
      final dto = toDto(obj);

      final record = await recordService.create(
        body: toJson(dto),
      );

      return Result.value(_mapRecordToDomain(record));
    } on Exception catch (e, s) {
      loggingService.logger.e('Create failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<TModel>> update(String id, TModel obj) async {
    try {
      final dto = toDto(obj);

      final record = await recordService.update(
        id,
        body: toJson(dto),
      );

      return Result.value(_mapRecordToDomain(record));
    } on Exception catch (e, s) {
      loggingService.logger.e('Update failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(String id) async {
    try {
      await recordService.delete(id);
      return Result.value(null);
    } on Exception catch (e, s) {
      loggingService.logger.e('Delete failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<TModel>> getById(String id) async {
    try {
      final record = await recordService.getOne(id);
      return Result.value(_mapRecordToDomain(record));
    } on Exception catch (e, s) {
      loggingService.logger.e('GetById failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<TModel>>> getAll() async {
    try {
      final records = await recordService.getFullList();

      final list = records.map(_mapRecordToDomain).toList();

      return Result.value(list);
    } on Exception catch (e, s) {
      loggingService.logger.e('GetAll failed', error: e, stackTrace: s);
      return Result.error(e.toString());
    }
  }
}
