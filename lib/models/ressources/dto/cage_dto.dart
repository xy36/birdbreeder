// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage_dto.freezed.dart';
part 'cage_dto.g.dart';

@freezed
abstract class CageDto with _$CageDto {
  factory CageDto({
    required String id,
    String? name,
    String? description,
    int? width,
    int? height,
    int? depth,
    @JsonKey() CageType? type,
    String? location,
    int? capacity,
    String? notes,
    String? user,
  }) = _CageDto;

  factory CageDto.fromJson(Map<String, dynamic> json) =>
      _$CageDtoFromJson(json);
}
