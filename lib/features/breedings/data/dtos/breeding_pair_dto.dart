// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/features/birds/data/converter/date_time_null_empty_converter.dart';
import 'package:birdbreeder/features/birds/data/converter/string_null_empty_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair_dto.freezed.dart';
part 'breeding_pair_dto.g.dart';

@freezed
class BreedingPairDto with _$BreedingPairDto {
  factory BreedingPairDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @DateTimeNullEmptyConverter() DateTime? start,
    @DateTimeNullEmptyConverter() DateTime? end,
    @StringNullEmptyConverter() String? father,
    @StringNullEmptyConverter() String? mother,
    @StringNullEmptyConverter() String? notes,
    String? user,
  }) = _BreedingPairDto;

  factory BreedingPairDto.fromJson(Map<String, dynamic> json) =>
      _$BreedingPairDtoFromJson(json);
}
