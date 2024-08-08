import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage_dto.freezed.dart';
part 'cage_dto.g.dart';

@freezed
class CageDto with _$CageDto {
  factory CageDto({
    required String id,
    String? name,
    String? description,
    int? width,
    int? height,
    int? depth,
    String? user,
  }) = _CageDto;

  factory CageDto.fromJson(Map<String, dynamic> json) =>
      _$CageDtoFromJson(json);
}
