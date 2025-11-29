import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_color_dto.freezed.dart';
part 'bird_color_dto.g.dart';

@freezed
abstract class BirdColorDto with _$BirdColorDto {
  factory BirdColorDto({
    required String id,
    String? name,
    String? user,
  }) = _BirdColorDto;

  factory BirdColorDto.fromJson(Map<String, dynamic> json) =>
      _$BirdColorDtoFromJson(json);
}
