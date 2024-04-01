import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_resources.freezed.dart';

@freezed
class BirdResources with _$BirdResources {
  factory BirdResources({
    @Default([]) List<BirdColor> colorsList,
    @Default([]) List<Species> speciesList,
  }) = _BirdResources;
}
