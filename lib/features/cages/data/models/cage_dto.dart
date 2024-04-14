import 'package:birdbreeder/shared/timestamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage_dto.freezed.dart';
part 'cage_dto.g.dart';

@freezed
class CageDto with _$CageDto, Timestamp {
  @With<Timestamp>()
  factory CageDto({
    required String? id,
    required String? name,
    required String? description,
    required int? width,
    required int? height,
    required int? depth,
  }) = _CageDto;

  factory CageDto.fromJson(Map<String, dynamic> json) =>
      _$CageDtoFromJson(json);
}
