import 'package:async/src/result/result.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/colors/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';

class BirdColorsRepositoryImpl implements IBirdColorsRepository {
  BirdColorsRepositoryImpl(this.pocketBaseService, this.loggingService);
  final PocketBaseService pocketBaseService;
  final LoggingService loggingService;

  @override
  Future<Result<BirdColor>> create(BirdColor color) async {
    try {
      final result = await pocketBaseService.colorsCollection
          .create(body: color.toDto().toJson());

      return Result.value(BirdColorDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(BirdColor colors) async {
    try {
      await pocketBaseService.colorsCollection.delete(colors.id);

      return Result.value(null);
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<BirdColor>>> getAll() async {
    try {
      final result = await pocketBaseService.colorsCollection
          .getFullList(sort: '-created');

      return Result.value(
        result.map((e) => BirdColorDto.fromJson(e.toJson()).toModel()).toList(),
      );
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> getById(String id) async {
    try {
      final birdResult = await pocketBaseService.colorsCollection.getOne(id);

      return Result.value(BirdColorDto.fromJson(birdResult.toJson()).toModel());
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> update(BirdColor color) async {
    try {
      final result = await pocketBaseService.colorsCollection
          .update(color.id, body: color.toDto().toJson());

      return Result.value(BirdColorDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.e(e.toString());
      return Result.error(e.toString());
    }
  }
}
