import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/i_resources_repository.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';

abstract class ICagesRepository extends IResourceRepository<Cage> {
  /// Returns a list of all birds in given [id] of [Cage].
  Future<Result<List<Bird>>> getBirdsOfCage(String id);
}
