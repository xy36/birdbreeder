import 'package:birdbreeder/features/birds/data/converter/date_time_null_empty_converter.dart';
import 'package:birdbreeder/features/birds/data/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/features/birds/data/dtos/expand_dto.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_dto.freezed.dart';
part 'bird_dto.g.dart';

@freezed
class BirdDto with _$BirdDto {
  factory BirdDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @StringNullEmptyConverter() String? ringnumber,
    @DateTimeNullEmptyConverter() DateTime? born,
    @StringNullEmptyConverter() String? species,
    @StringNullEmptyConverter() String? color,
    @StringNullEmptyConverter() String? cage,
    @StringNullEmptyConverter() String? father,
    @StringNullEmptyConverter() String? mother,
    @Default(Sex.unknown) Sex sex,
    ExpandDto? expand,
    bool? sold,
    @Default([]) List<String> children,
  }) = _BirdDto;

  factory BirdDto.fromJson(Map<String, dynamic> json) =>
      _$BirdDtoFromJson(json);
}
