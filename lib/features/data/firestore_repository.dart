import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/features/domain/mapper/mapper.dart';
import 'package:birdbreeder/features/domain/models/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/domain/models/dtos/bird_dto.dart';
import 'package:birdbreeder/features/domain/models/dtos/cage_dto.dart';
import 'package:birdbreeder/features/domain/models/dtos/species_dto.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/injection.dart';
import 'package:birdbreeder/logging_service.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

const String prefix = 'FirestoreRepository';

class FiretoreRepository implements IRepository {
  final db = s1.get<FirebaseFirestore>();
  final authUser =
      s1.get<IAuthenticationService>().currentUser().asValue?.value;
  final logger = s1.get<LoggingService>().logger;

  @override
  Future<Result<Bird>> createBird(Bird bird) async {
    logger.verbose('[$prefix] Creating bird: $bird');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    final newBird = bird.copyWith(id: const Uuid().v4());

    try {
      // add the bird to the user birds collection and insert uuid as id
      await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .add(newBird.toDto().toJson());

      logger.verbose('[$prefix] Bird created: $newBird');
      return Result.value(newBird);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating bird: $bird');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteBird(String id) async {
    logger.verbose('[$prefix] Deleting bird with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // add the bird to the user birds collection and insert uuid as id
      await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] Bird deleted with id: $id');
      return Result.value(null);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error deleting bird with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> getBirdById(String id) async {
    logger.verbose('[$prefix] Getting bird with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final bird = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got bird with id: $id');
      return Result.value(await BirdDto.fromJson(bird.data()!).toBird());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting bird with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirds() async {
    logger.verbose('[$prefix] Getting all birds');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      logger.verbose('[$prefix] Got all birds');
      return Result.value(await birdsDtos.toBirdList());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all birds');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirdsOfCage(String cageId) async {
    logger.verbose('[$prefix] Getting all birds of cage with id: $cageId');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('cageId', isEqualTo: cageId)
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      logger.verbose('[$prefix] Got all birds of cage with id: $cageId');
      return Result.value(await birdsDtos.toBirdList());
    } catch (e, st) {
      logger.handle(
        e,
        st,
        '[$prefix] Error getting all birds of cage with id: $cageId',
      );
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirdsOfColor(String colorId) async {
    logger.verbose('[$prefix] Getting all birds of color with id: $colorId');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('colorId', isEqualTo: colorId)
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      logger.verbose('[$prefix] Got all birds of color with id: $colorId');
      return Result.value(await birdsDtos.toBirdList());
    } catch (e, st) {
      logger.handle(
        e,
        st,
        'Error getting all birds of color with id: $colorId',
      );
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Bird>>> getBirdsOfSpecies(String speciesId) async {
    logger
        .verbose('[$prefix] Getting all birds of species with id: $speciesId');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final birdsDtos = await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('speciesId', isEqualTo: speciesId)
          .get()
          .then(
            (value) =>
                value.docs.map((doc) => BirdDto.fromJson(doc.data())).toList(),
          );

      logger.verbose('[$prefix] Got all birds of species with id: $speciesId');
      return Result.value(await birdsDtos.toBirdList());
    } catch (e, st) {
      logger.handle(
        e,
        st,
        'Error getting all birds of species with id: $speciesId',
      );
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> getCageById(String id) async {
    logger.verbose('[$prefix] Getting cage with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final cage = await db
          .collection('users')
          .doc(userId)
          .collection('cages')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got cage with id: $id');

      return Result.value(CageDto.fromJson(cage.data()!).toCage());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting cage with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Cage>>> getCages() async {
    logger.verbose('[$prefix] Getting all cages');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final cages =
          await db.collection('users').doc(userId).collection('cages').get();

      logger.verbose('[$prefix] Got all cages');
      return Result.value(
        cages.docs
            .map((doc) => CageDto.fromJson(doc.data()))
            .toList()
            .toCageList(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all cages');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> getColorById(String id) async {
    logger.verbose('[$prefix] Getting color with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final color = await db
          .collection('users')
          .doc(userId)
          .collection('colors')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got color with id: $id');

      return Result.value(BirdColorDto.fromJson(color.data()!).toBirdColor());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting color with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<BirdColor>>> getColors() async {
    logger.verbose('[$prefix] Getting all colors');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final colors =
          await db.collection('users').doc(userId).collection('colors').get();

      logger.verbose('[$prefix] Got all colors');
      return Result.value(
        colors.docs
            .map((doc) => BirdColorDto.fromJson(doc.data()))
            .toList()
            .toBirdColorList(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all colors');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> createSpecies(Species species) async {
    logger.verbose('[$prefix] Creating species: $species');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    if (species.name == null) {
      logger.error('[$prefix] Species name is null');
      return Future.value(Result.error('Species name is null'));
    }

    try {
      final newSpecies = species.copyWith(id: const Uuid().v4());

      // add the species to the user's species collection
      await db.collection('users').doc(userId).collection('species').add(
            newSpecies.toDto().toJson(),
          );

      logger.verbose('[$prefix] Species created: $newSpecies');

      return Result.value(newSpecies);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating species: $species');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Species>>> getSpecies() async {
    logger.verbose('[$prefix] Getting all species');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final species =
          await db.collection('users').doc(userId).collection('species').get();

      logger.verbose('[$prefix] Got all species');
      return Result.value(
        species.docs
            .map((doc) => SpeciesDto.fromJson(doc.data()))
            .toList()
            .toSpeciesList(),
      );
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting all species');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> getSpeciesById(String id) async {
    logger.verbose('[$prefix] Getting species with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      final species = await db
          .collection('users')
          .doc(userId)
          .collection('species')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.get());

      logger.verbose('[$prefix] Got species with id: $id');
      return Result.value(SpeciesDto.fromJson(species.data()!).toSpecies());
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error getting species with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Bird>> updateBird(Bird bird) async {
    logger.verbose('[$prefix] Updating bird: $bird');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (bird.id == null) {
      logger.error('[$prefix] Bird id is null');
      return Future.value(Result.error('Bird id is null'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('birds')
          .where('id', isEqualTo: bird.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(bird.copyWith(id: bird.id).toDto().toJson()),
          );

      logger.verbose('[$prefix] Bird updated: $bird');

      return Result.value(bird);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating bird: $bird');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> createCage(Cage cage) async {
    logger.verbose('[$prefix] Creating cage: $cage');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    final newCage = cage.copyWith(id: const Uuid().v4());

    try {
      // add the cage to the user's cages collection
      await db.collection('users').doc(userId).collection('cages').add(
            newCage.toDto().toJson(),
          );

      logger.verbose('[$prefix] Cage created: $newCage');
      return Result.value(newCage);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating cage: $cage');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> createColor(BirdColor color) async {
    logger.verbose('[$prefix] Creating color: $color');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (color.name == null) {
      logger.error('[$prefix] Color name is null');
      return Future.value(Result.error('Color name is null'));
    }

    final userId = authUser!.uid;

    final newColor = color.copyWith(id: const Uuid().v4());

    try {
      // add the color to the user's colors collection
      await db.collection('users').doc(userId).collection('colors').add(
            newColor.toDto().toJson(),
          );

      logger.verbose('[$prefix] Color created: $newColor');
      return Result.value(newColor);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error creating color: $color');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteCage(String id) async {
    logger.verbose('[$prefix] Deleting cage with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // remove the cage from the user's cages collection
      await db
          .collection('users')
          .doc(userId)
          .collection('cages')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] Cage deleted with id: $id');
      return Result.value(null);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error deleting cage with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteColor(String id) async {
    logger.verbose('[$prefix] Deleting color with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // remove the color from the user's colors collection
      await db
          .collection('users')
          .doc(userId)
          .collection('colors')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] Color deleted with id: $id');

      return Result.value(null);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error deleting color with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteSpecies(String id) async {
    logger.verbose('[$prefix] Deleting species with id: $id');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    final userId = authUser!.uid;

    try {
      // remove the species from the user's species collection
      await db
          .collection('users')
          .doc(userId)
          .collection('species')
          .where('id', isEqualTo: id)
          .get()
          .then((value) => value.docs.first.reference.delete());

      logger.verbose('[$prefix] Species deleted with id: $id');
      return Result.value(null);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error deleting species with id: $id');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Cage>> updateCage(Cage cage) async {
    logger.verbose('[$prefix] Updating cage: $cage');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (cage.id == null) {
      logger.error('[$prefix] Cage id is null');
      return Future.value(Result.error('Cage id is null'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('cages')
          .where('id', isEqualTo: cage.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(cage.copyWith(id: cage.id).toDto().toJson()),
          );

      return Result.value(cage);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating cage: $cage');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<BirdColor>> updateColor(BirdColor color) async {
    logger.verbose('[$prefix] Updating color: $color');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (color.id == null) {
      logger.error('[$prefix] Color id is null');
      return Future.value(Result.error('Color id is null'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('colors')
          .where('id', isEqualTo: color.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(color.copyWith(id: color.id).toDto().toJson()),
          );

      logger.verbose('[$prefix] Color updated: $color');

      return Result.value(color);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating color: $color');
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Species>> updateSpecies(Species species) async {
    logger.verbose('[$prefix] Updating species: $species');

    if (authUser == null) {
      logger.error('[$prefix] User is not authenticated');
      return Future.value(Result.error('User is not authenticated'));
    }

    if (species.id == null) {
      logger.error('[$prefix] Species id is null');
      return Future.value(Result.error('Species id is null'));
    }

    final userId = authUser!.uid;

    try {
      await db
          .collection('users')
          .doc(userId)
          .collection('species')
          .where('id', isEqualTo: species.id)
          .get()
          .then(
            (value) => value.docs.first.reference
                .update(species.copyWith(id: species.id).toDto().toJson()),
          );

      logger.verbose('[$prefix] Species updated: $species');
      return Result.value(species);
    } catch (e, st) {
      logger.handle(e, st, '[$prefix] Error updating species: $species');
      return Result.error(e.toString());
    }
  }
}
