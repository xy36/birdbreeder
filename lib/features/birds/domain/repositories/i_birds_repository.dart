import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/shared/domain/repositories/i_crud_repository.dart';

abstract class IBirdsRepository extends ICrudRepository<Bird> {}
