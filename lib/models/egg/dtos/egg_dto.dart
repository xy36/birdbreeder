// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/converter/utc_date_time_converter.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'egg_dto.freezed.dart';
part 'egg_dto.g.dart';

@freezed
abstract class EggDto with _$EggDto {
  const factory EggDto({
    required String id,
    @JsonKey(name: 'brood') required String broodId,
    required int number,
    required DateTime laidAt,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @UtcDateTimeConverter() DateTime? hatchedAt,
    @UtcDateTimeConverter() DateTime? fledgedAt,
    @Default(EggStatus.laid) EggStatus status,
    @StringNullEmptyConverter() String? ringnumber,
    @StringNullEmptyConverter() @JsonKey(name: 'color') String? colorId,
    @StringNullEmptyConverter() @JsonKey(name: 'cage') String? cageId,
    @StringNullEmptyConverter() @JsonKey(name: 'species') String? speciesId,
    @StringNullEmptyConverter() String? birdId,
    @StringNullEmptyConverter() String? notes,
  }) = _EggDto;

  factory EggDto.fromJson(Map<String, dynamic> json) => _$EggDtoFromJson(json);
}
