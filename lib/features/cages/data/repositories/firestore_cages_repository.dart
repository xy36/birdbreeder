import 'package:async/async.dart';
import 'package:birdbreeder/features/birds/domain/entities/bird.dart';
import 'package:birdbreeder/features/cages/data/mapper/cage_mapper.dart';
import 'package:birdbreeder/features/cages/data/models/cage_dto.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';
import 'package:birdbreeder/features/cages/domain/i_cages_repository.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/shared/firestore_cache.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

const String prefix = 'FirestoreCagesRepository';

class FirestoreCagesRepository extends FirestoreCache<CageDto>
    implements ICagesRepository {
  FirestoreCagesRepository()
      : super(
          hasSameId: ({required obj, required cached}) => obj.id == cached.id,
        );

  final db = s1.get<FirebaseFirestore>();
  final authUser =
      s1.get<IAuthenticationService>().currentUser().asValue?.value;
  final logger = s1.get<LoggingService>().logger;

  CollectionReference<Map<String, dynamic>> get cagesCollection =>
      db.collection('users').doc(authUser!.uid).collection('cages');

  @override
  Future<Result<Cage>> create(Cage cage) async {
    logger.verbose('[$prefix] Creating cage: $cage');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final newCage = cage.copyWith(id: const Uuid().v4()).toDto()
      ..setLastUpdated();

    try {
      // add the cage to the user's cages collection
      await cagesCollection.add(
        newCage.toJson(),
      );

      addOrUpdateCache([newCage]);

      logger.verbose('[$prefix] Cage created: $newCage');
      return Result.value(newCage.toCage());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating cage: $cage');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(Cage cage) async {
    logger.verbose('[$prefix] Deleting cage with id: ${cage.id}');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      // remove the cage from the user's cages collection
      await cagesCollection
          .where('id', isEqualTo: cage.id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] Cage deleted with id: ${cage.id}');

      removeFromCache([cage.toDto()]);

      return Result.value(null);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error deleting cage with id: ${cage.id}');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Cage>>> getAll() async {
    logger.verbose('[$prefix] Getting all cages');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      final cagesDtos = await cagesCollection
          .where(
            'lastUpdated',
            isGreaterThan: lastUpdated.toIso8601String(),
          )
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => CageDto.fromJson(doc.data())).toList(),
          );

      // after successfully getting all cages, add them to the cache
      addOrUpdateCache(cagesDtos);

      logger.verbose(
        '[$prefix] Got all cages (all:${cache.length} | readFromFirestore:${cagesDtos.length})',
      );

      return Result.value(
        cache.toCageList(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all cages');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirdsOfCage(String id) async {
    // logger.verbose('[$prefix] Getting all birds of cage with id: $cageId');

    // if (authUser == null) {
    //   logger.error('[$prefix] User is not authenticated');
    //   return Future.value(Result.error('User is not authenticated'));
    // }

    // final userId = authUser!.uid;

    // try {
    //   final birdsDtos = await db
    //       .collection('users')
    //       .doc(userId)
    //       .collection('birds')
    //       .where('cageId', isEqualTo: cageId)
    //       .get()
    //       .then(
    //         (value) =>
    //             value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
    //       );

    //   logger.verbose('[$prefix] Got all birds of cage with id: $cageId');
    //   return Result.value(await birdsDtos.toBirdList());
    // } catch (e, st) {
    //   logger.handle(
    //     e,
    //     st,
    //     '[$prefix] Error getting all birds of cage with id: $cageId',
    //   );
    //   return Result.error(e.toString());
    // }
    return Result.error('Not implemented');
  }

  @override
  Future<Result<Cage>> getById(String id) async {
    logger.verbose('[$prefix] Getting cage with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      try {
        final cageFromCache = cache.firstWhere((element) => element.id == id);
        logger.verbose('[$prefix] Cache hit for cage with id: $id');
        return Result.value(cageFromCache.toCage());
      } catch (e) {
        logger.verbose('[$prefix] Cache miss for cage with id: $id');
      }

      final cageFromFirestore = await cagesCollection
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got cage with id: $id from Firestore');

      return Result.value(CageDto.fromJson(cageFromFirestore.data()!).toCage());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting cage with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> update(Cage cage) async {
    logger.verbose('[$prefix] Updating cage: $cage');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (cage.id == null) {
      logger.error('[$prefix] Cage id is null');
      return Future.value(Result.error('Cage id is null'));
    }

    final updatedCage = cage.toDto()..setLastUpdated();

    try {
      await cagesCollection.where('id', isEqualTo: updatedCage.id).get().then(
            (value) => value.docs.first.reference.update(updatedCage.toJson()),
          );

      addOrUpdateCache([updatedCage]);

      return Result.value(cage);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating cage: $cage');
      return Result.error(e.toString());
    }
  }
}
