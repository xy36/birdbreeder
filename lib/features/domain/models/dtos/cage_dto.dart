import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage_dto.freezed.dart';
part 'cage_dto.g.dart';

@freezed
class CageDto with _$CageDto {
  factory CageDto({
    required String? id,
    required String? name,
  }) = _CageDto;

  factory CageDto.fromJson(Map<String, dynamic> json) =>
      _$CageDtoFromJson(json);
}
