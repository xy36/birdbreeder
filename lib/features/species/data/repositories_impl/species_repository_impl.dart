import 'package:async/src/result/result.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/species/data/dtos/species_dto.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';

class SpeciesRepositoryImpl implements ISpeciesRepository {
  SpeciesRepositoryImpl(this.pocketBaseService, this.loggingService);
  final PocketBaseService pocketBaseService;
  final LoggingService loggingService;

  @override
  Future<Result<Species>> create(Species color) async {
    try {
      final result = await pocketBaseService.speciesCollection
          .create(body: color.toDto().toJson());

      return Result.value(SpeciesDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(Species species) async {
    try {
      await pocketBaseService.speciesCollection.delete(species.id);

      return Result.value(null);
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Species>>> getAll() async {
    try {
      final result = await pocketBaseService.speciesCollection
          .getFullList(sort: '-created');

      return Result.value(
        result.map((e) => SpeciesDto.fromJson(e.toJson()).toModel()).toList(),
      );
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> getById(String id) async {
    try {
      final birdResult = await pocketBaseService.speciesCollection.getOne(id);

      return Result.value(SpeciesDto.fromJson(birdResult.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> update(Species color) async {
    try {
      final result = await pocketBaseService.speciesCollection
          .update(color.id, body: color.toDto().toJson());

      return Result.value(SpeciesDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }
}
