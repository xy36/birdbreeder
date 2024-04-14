import 'package:async/async.dart';
import 'package:birdbreeder/features/species/domain/entities/species.dart';
import 'package:birdbreeder/features/species/domain/repositories/i_species_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetAllSpeciesUsecase {
  GetAllSpeciesUsecase();
  final repository = s1.get<ISpeciesRepository>();

  Future<Result<List<Species>>> call() async {
    return repository.getAll();
  }
}
