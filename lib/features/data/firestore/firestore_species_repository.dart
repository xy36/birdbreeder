import 'package:async/async.dart';
import 'package:birdbreeder/features/data/firestore/firestore_cache.dart';
import 'package:birdbreeder/features/domain/i_species_repository.dart';
import 'package:birdbreeder/features/domain/mapper/mapper.dart';
import 'package:birdbreeder/features/domain/models/dtos/species_dto.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/injection.dart';
import 'package:birdbreeder/logging_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

const String prefix = 'FirestoreSpeciesRepository';

class FirestoreSpeciesRepository extends FirestoreCache<Species>
    implements ISpeciesRepository {
  FirestoreSpeciesRepository()
      : super(
          hasSameId: ({required obj, required cached}) => obj.id == cached.id,
        );

  final db = s1.get<FirebaseFirestore>();
  final authUser =
      s1.get<IAuthenticationService>().currentUser().asValue?.value;
  final logger = s1.get<LoggingService>().logger;

  CollectionReference<Map<String, dynamic>> get speciessCollection =>
      db.collection('users').doc(authUser!.uid).collection('speciess');

  @override
  Future<Result<Species>> create(Species species) async {
    logger.verbose('[$prefix] Creating species: $species');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final newSpecies = species.copyWith(id: const Uuid().v4()).toDto()
      ..setLastUpdated();

    try {
      // add the species to the user's speciess collection
      await speciessCollection.add(
        newSpecies.toJson(),
      );

      addOrUpdateCache([newSpecies.toSpecies()]);

      logger.verbose('[$prefix] Species created: $newSpecies');
      return Result.value(newSpecies.toSpecies());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating species: $species');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(Species species) async {
    logger.verbose('[$prefix] Deleting species with id: ${species.id}');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      // remove the species from the user's speciess collection
      await speciessCollection
          .where('id', isEqualTo: species.id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] Species deleted with id: ${species.id}');

      removeFromCache([species]);

      return Result.value(null);
    } catch (e, st) {
      logger.handle(
        e,
        st,
        '[$prefix] Error deleting species with id: ${species.id}',
      );
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Species>>> getAll() async {
    logger.verbose('[$prefix] Getting all speciess');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      final speciessDtos = await speciessCollection
          .where(
            'lastUpdated',
            isGreaterThan: lastUpdated.toIso8601String(),
          )
          .get()
          .then(
            (value) => value.docs
                .map((doc) => SpeciesDto.fromJson(doc.data()))
                .toList(),
          );

      logger.verbose(
        '[$prefix] Got all species (all:${cache.length} | readFromFirestore:${speciessDtos.length})',
      );

      final speciess = speciessDtos.toSpeciesList();

      // after successfully getting all speciess, add them to the cache
      addOrUpdateCache(speciess);

      return Result.value(
        cache,
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all speciess');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> getById(String id) async {
    logger.verbose('[$prefix] Getting species with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    try {
      try {
        final speciesFromCache =
            cache.firstWhere((element) => element.id == id);

        logger.verbose('[$prefix] Cache hit for species with id: $id');

        return Result.value(speciesFromCache);
      } catch (e) {
        logger.verbose('[$prefix] Cache miss for species with id: $id');
      }
      final speciesFromFirestore = await speciessCollection
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got species with id: $id from Firestore');

      return Result.value(
        SpeciesDto.fromJson(speciesFromFirestore.data()!).toSpecies(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting species with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> update(Species species) async {
    logger.verbose('[$prefix] Updating species: $species');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (species.id == null) {
      logger.error('[$prefix] Species id is null');
      return Future.value(Result.error('Species id is null'));
    }

    final updatedSpecies = species.toDto()..setLastUpdated();

    try {
      await speciessCollection
          .where('id', isEqualTo: updatedSpecies.id)
          .get()
          .then(
            (value) =>
                value.docs.first.reference.update(updatedSpecies.toJson()),
          );

      addOrUpdateCache([updatedSpecies.toSpecies()]);

      return Result.value(species);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating species: $species');
      return Result.error(e.toString());
    }
  }
}
