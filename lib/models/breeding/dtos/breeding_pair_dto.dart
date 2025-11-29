// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/converter/utc_date_time_converter.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair_dto.freezed.dart';
part 'breeding_pair_dto.g.dart';

@freezed
abstract class BreedingPairDto with _$BreedingPairDto {
  factory BreedingPairDto({
    required String id,
    @JsonKey(name: 'father') required String fatherId,
    @JsonKey(name: 'mother') required String motherId,
    required BreedingPairStatus status,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @UtcDateTimeConverter() DateTime? start,
    @UtcDateTimeConverter() DateTime? end,
    @JsonKey(name: 'cage') String? cageId,
    @StringNullEmptyConverter() String? notes,
    String? user,
  }) = _BreedingPairDto;

  factory BreedingPairDto.fromJson(Map<String, dynamic> json) =>
      _$BreedingPairDtoFromJson(json);
}
