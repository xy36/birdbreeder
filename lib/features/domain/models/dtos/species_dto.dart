import 'package:birdbreeder/features/domain/models/dtos/timestamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'species_dto.freezed.dart';
part 'species_dto.g.dart';

@freezed
class SpeciesDto with _$SpeciesDto, Timestamp {
  @With<Timestamp>()
  factory SpeciesDto({
    required String? id,
    required String? name,
    required String? latName,
  }) = _SpeciesDto;

  factory SpeciesDto.fromJson(Map<String, dynamic> json) =>
      _$SpeciesDtoFromJson(json);
}
