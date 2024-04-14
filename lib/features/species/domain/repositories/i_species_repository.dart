import 'package:birdbreeder/features/species/domain/entities/species.dart';
import 'package:birdbreeder/shared/domain/repositories/i_crud_repository.dart';

abstract class ISpeciesRepository extends ICrudRepository<Species> {}
