import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/shared/domain/repositories/i_crud_repository.dart';

abstract class IBirdsRepository extends ICrudRepository<Bird> {}
