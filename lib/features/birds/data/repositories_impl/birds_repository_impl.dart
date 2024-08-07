import 'package:async/src/result/result.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/repositories/i_birds_repository.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';

class BirdsRepositoryImpl implements IBirdsRepository {
  BirdsRepositoryImpl(this.pocketBaseService, this.loggingService);
  final PocketBaseService pocketBaseService;
  final LoggingService loggingService;

  @override
  Future<Result<Bird>> create(Bird bird) async {
    try {
      final result = await pocketBaseService.birdsCollection
          .create(body: bird.toDto().toJson(), expand: 'species,color,cage');

      return Result.value(BirdDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(Bird bird) async {
    try {
      await pocketBaseService.birdsCollection.delete(bird.id);

      return Result.value(null);
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getAll() async {
    try {
      final result = await pocketBaseService.birdsCollection
          .getFullList(sort: '-created', expand: 'species,color,cage');

      return Result.value(
        result.map((e) => BirdDto.fromJson(e.toJson()).toModel()).toList(),
      );
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> getById(String id) async {
    try {
      final birdResult = await pocketBaseService.birdsCollection
          .getOne(id, expand: 'species,color,cage');

      return Result.value(BirdDto.fromJson(birdResult.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> update(Bird bird) async {
    try {
      final birdDto = bird.toDto();
      final result = await pocketBaseService.birdsCollection.update(
        bird.id,
        body: birdDto.toJson(),
        expand: 'species,color,cage',
      );

      return Result.value(BirdDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }
}
