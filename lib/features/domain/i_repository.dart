import 'package:async/async.dart';
import 'package:birdbreeder/features/domain/models/entities/entities.dart';

abstract class IRepository {
  /// Bird

  /// Returns a bird with the given id.
  Future<Result<Bird>> getBirdById(String id);

  /// Returns a list of all birds.
  Future<Result<List<Bird>>> getBirds();

  /// Delete the bird with the given id.
  Future<Result<void>> deleteBird(String id);

  /// Update the bird
  Future<Result<Bird>> updateBird(Bird bird);

  /// Create a new bird.
  Future<Result<Bird>> createBird(Bird bird);

  /// Species

  /// Create a new species.
  Future<Result<Species>> createSpecies(Species species);

  /// Returns a species with the given id.
  Future<Result<Species>> getSpeciesById(String id);

  /// Returns a list of all species.
  Future<Result<List<Species>>> getSpecies();

  /// Update the species
  Future<Result<Species>> updateSpecies(Species species);

  /// Delete the species
  Future<Result<void>> deleteSpecies(String id);

  /// Returns a list of all birds of the given species.
  Future<Result<List<Bird>>> getBirdsOfSpecies(String speciesId);

  /// Cage

  /// Create a new cage.
  Future<Result<Cage>> createCage(Cage cage);

  /// Returns a cage with the given id.
  Future<Result<Cage>> getCageById(String id);

  /// Returns a list of all cages.
  Future<Result<List<Cage>>> getCages();

  /// Returns a list of all birds of the given cage.
  Future<Result<List<Bird>>> getBirdsOfCage(String cageId);

  /// Updates the cage.
  Future<Result<Cage>> updateCage(Cage cage);

  /// Delete the cage with the given id.
  Future<Result<void>> deleteCage(String id);

  /// Color

  /// Create a new color.
  Future<Result<BirdColor>> createColor(BirdColor color);

  /// Delete the color with the given id.
  Future<Result<void>> deleteColor(String id);

  /// Returns a color with the given id.
  Future<Result<BirdColor>> getColorById(String id);

  /// Returns a list of all colors.
  Future<Result<List<BirdColor>>> getColors();

  /// Returns a list of all birds of the given color.
  Future<Result<List<Bird>>> getBirdsOfColor(String colorId);

  /// Updates the color.
  Future<Result<BirdColor>> updateColor(BirdColor color);
}
