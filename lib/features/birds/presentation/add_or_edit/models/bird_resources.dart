import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_resources.freezed.dart';

@freezed
class BirdResources with _$BirdResources {
  factory BirdResources({
    required List<BirdColor> colorsList,
    required List<Species> speciesList,
    required List<Cage> cagesList,
  }) = _BirdResources;
}
