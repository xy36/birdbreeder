import 'package:birdbreeder/features/domain/models/dtos/timestamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_color_dto.freezed.dart';
part 'bird_color_dto.g.dart';

@freezed
class BirdColorDto with _$BirdColorDto, Timestamp {
  @With<Timestamp>()
  factory BirdColorDto({
    String? id,
    String? name,
  }) = _BirdColorDto;

  factory BirdColorDto.fromJson(Map<String, dynamic> json) =>
      _$BirdColorDtoFromJson(json);
}
