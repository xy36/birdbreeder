import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/bird_color_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/core/extensions/species_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/models/bird_breeder_resources.dart';

extension BirdsExtension on Bird {
  bool filter(String filter) {
    final isRingNumberMatch =
        ringnumber?.toLowerCase().contains(filter.toLowerCase()) ?? false;
    final isColorMatch =
        colorResolved?.name?.toLowerCase().contains(filter.toLowerCase()) ??
            false;
    final isSpeciesMatch =
        speciesResolved?.name?.toLowerCase().contains(filter.toLowerCase()) ??
            false;

    final isCageMatch =
        cageResolved?.name?.toLowerCase().contains(filter.toLowerCase()) ??
            false;

    return isRingNumberMatch || isColorMatch || isSpeciesMatch || isCageMatch;
  }

  BirdBreederResources Function() get _birdBreederResources =>
      () => s1.get<BirdBreederCubit>().state.birdBreederResources;

  Species? get speciesResolved => species == null
      ? null
      : _birdBreederResources().species.findById(species!);

  Cage? get cageResolved =>
      cage == null ? null : _birdBreederResources().cages.findById(cage!);

  BirdColor? get colorResolved =>
      color == null ? null : _birdBreederResources().colors.findById(color!);

  Bird? get fatherResolved =>
      father == null ? null : _birdBreederResources().birds.findById(father!);

  Bird? get motherResolved =>
      mother == null ? null : _birdBreederResources().birds.findById(mother!);

  Brood? get broodResolved =>
      brood == null ? null : _birdBreederResources().broods.findById(brood!);
}

extension BirdsListExtension on List<Bird> {
  List<Bird> filter(String filter) {
    return where((element) => element.filter(filter)).toList();
  }

  Bird? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
