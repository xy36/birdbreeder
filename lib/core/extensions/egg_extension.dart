import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/bird_color_extension.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/core/extensions/species_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/egg.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/models/bird_breeder_resources.dart';

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

  /// Returns the latest brood resolved by start date
  Bird? get birdResolved => _birds.firstOrNullWhere(
        (e) => e.broodId == id,
      );

  Cage? get cageResolved =>
      cageId == null ? null : _birdBreederResources().cages.findById(cageId!);

  BirdColor? get colorResolved => colorId == null
      ? null
      : _birdBreederResources().colors.findById(colorId!);

  Species? get speciesResolved => speciesId == null
      ? null
      : _birdBreederResources().species.findById(speciesId!);

  bool get isFertilized => status == EggStatus.fertilized;
  bool get isUnfertilized => status == EggStatus.unfertilized;
  bool get isHatched => status == EggStatus.hatched;
  bool get isDead => status == EggStatus.dead;
  bool get isFledged => status == EggStatus.fledged;
}
