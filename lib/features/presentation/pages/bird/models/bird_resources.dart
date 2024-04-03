import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
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
