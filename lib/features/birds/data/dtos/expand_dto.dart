import 'package:birdbreeder/features/cages/data/dtos/cage_dto.dart';
import 'package:birdbreeder/features/colors/data/dtos/bird_color_dto.dart';
import 'package:birdbreeder/features/species/data/dtos/species_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expand_dto.freezed.dart';
part 'expand_dto.g.dart';

@freezed
class ExpandDto with _$ExpandDto {
  factory ExpandDto({
    required BirdColorDto? color,
    required SpeciesDto? species,
    required CageDto? cage,
  }) = _ExpandDto;

  factory ExpandDto.fromJson(Map<String, dynamic> json) =>
      _$ExpandDtoFromJson(json);
}
