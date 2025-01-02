import 'package:async/src/result/result.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/cages/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/domain/repositories/i_cages_repository.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';

class CagesRepositoryImpl implements ICagesRepository {
  CagesRepositoryImpl(this.pocketBaseService, this.loggingService);
  final PocketBaseService pocketBaseService;
  final LoggingService loggingService;

  @override
  Future<Result<Cage>> create(Cage cage) async {
    try {
      final result = await pocketBaseService.cagesCollection
          .create(body: cage.toDto().toJson());

      return Result.value(CageDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(Cage cages) async {
    try {
      await pocketBaseService.cagesCollection.delete(cages.id);

      return Result.value(null);
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Cage>>> getAll() async {
    try {
      final result =
          await pocketBaseService.cagesCollection.getFullList(sort: '-created');

      return Result.value(
        result.map((e) => CageDto.fromJson(e.toJson()).toModel()).toList(),
      );
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> getById(String id) async {
    try {
      final birdResult = await pocketBaseService.cagesCollection.getOne(id);

      return Result.value(CageDto.fromJson(birdResult.toJson()).toModel());
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> update(Cage cage) async {
    try {
      final result = await pocketBaseService.cagesCollection
          .update(cage.id, body: cage.toDto().toJson());

      return Result.value(CageDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }
}
