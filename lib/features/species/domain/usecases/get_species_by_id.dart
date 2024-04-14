import 'package:async/async.dart';
import 'package:birdbreeder/features/species/domain/entities/species.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetSpeciesByIdUsecase {
  GetSpeciesByIdUsecase();
  final repository = s1.get<ISpeciesRepository>();

  Future<Result<Species>> call(String id) async {
    return repository.getById(id);
  }
}
