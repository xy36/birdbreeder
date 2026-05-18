import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/bird_color_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/core/extensions/species_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_breeder_resources.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension EggListExtension on List<Egg> {
  Egg? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }

  int get hatchedCount {
    return where((e) => e.isHatched).length;
  }

  int get fledgedCount {
    return where((e) => e.isFledged).length;
  }

  int get diedCount {
    return where((e) => e.isDead).length;
  }

  int get fertilized {
    return where((e) => e.isFertilized).length;
  }
}

extension EggExtension on Egg {
  BirdBreederResources Function() get _birdBreederResources =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources;

  /// Returns a function that returns the birds from the state
  List<Bird> get _birds =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.birds;

  /// Returns the bird resolved from the state
  Bird? get birdResolved => _birds.firstOrNullWhere((b) => b.id == birdId);

  /// Returns the species resolved from the state
  Cage? get cageResolved =>
      cageId == null ? null : _birdBreederResources().cages.findById(cageId!);

  /// Returns the species resolved from the state
  BirdColor? get colorResolved => colorId == null
      ? null
      : _birdBreederResources().colors.findById(colorId!);

  /// Returns the species resolved from the state
  Species? get speciesResolved => speciesId == null
      ? null
      : _birdBreederResources().species.findById(speciesId!);

  /// Returns the brood resolved from the state
  Brood? get broodResolved => _birdBreederResources().broods.findById(broodId);

  bool get isFertilized => status == EggStatus.fertilized;
  bool get isUnfertilized => status == EggStatus.unfertilized;
  bool get isHatched => status == EggStatus.hatched;
  bool get isDead => status == EggStatus.dead;
  bool get isFledged => status == EggStatus.fledged;
}
