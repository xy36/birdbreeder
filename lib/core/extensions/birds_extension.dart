import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/bird_color_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/core/extensions/species_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_breeder_resources.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension BirdsExtension on Bird {
  bool filter(String filter) {
    final isRingNumberMatch =
        ringNumber?.toLowerCase().contains(filter.toLowerCase()) ?? false;
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

  Species? get speciesResolved => speciesId == null
      ? null
      : _birdBreederResources().species.findById(speciesId!);

  Cage? get cageResolved =>
      cageId == null ? null : _birdBreederResources().cages.findById(cageId!);

  Contact? get ownerResolved => ownerId == null
      ? null
      : _birdBreederResources().contacts.findById(ownerId!);

  Contact? get boughtFromResolved => boughtFromId == null
      ? null
      : _birdBreederResources().contacts.findById(boughtFromId!);

  Contact? get soldToResolved => soldToId == null
      ? null
      : _birdBreederResources().contacts.findById(soldToId!);

  BirdColor? get colorResolved => colorId == null
      ? null
      : _birdBreederResources().colors.findById(colorId!);

  Bird? get fatherResolved => fatherId == null
      ? null
      : _birdBreederResources().birds.findById(fatherId!);

  Bird? get motherResolved => motherId == null
      ? null
      : _birdBreederResources().birds.findById(motherId!);

  Brood? get broodResolved => broodId == null
      ? null
      : _birdBreederResources().broods.findById(broodId!);

  List<Bird> get childrenResolved {
    return _birdBreederResources()
        .birds
        .where((e) => id == e.fatherId || id == e.motherId)
        .toList();
  }

  DateTime? get effectiveBornAt => hatchedAt ?? laidAt ?? fledgedAt;

  LifeStage? get lifeStage {
    if (diedAt == null &&
        fledgedAt == null &&
        hatchedAt == null &&
        laidAt == null) {
      return null;
    }

    if (diedAt != null) {
      return LifeStage.deceased;
    } else if (fledgedAt != null) {
      return LifeStage.adult;
    } else if (hatchedAt != null) {
      return LifeStage.chick;
    } else {
      return LifeStage.egg;
    }
  }

  bool changed<T>(Bird? initial, T? Function(Bird) pick) {
    if (initial == null) return false;
    final a = pick(this);
    final b = pick(initial);
    // einfache Equality – bei Collections ggf. DeepCollectionEquality nutzen
    return a != b;
  }
}

extension BirdsListExtension on List<Bird> {
  List<Bird> filter(String filter) {
    return where((element) => element.filter(filter)).toList();
  }

  Bird? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
