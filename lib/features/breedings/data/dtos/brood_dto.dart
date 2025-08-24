// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/features/birds/data/converter/date_time_null_empty_converter.dart';
import 'package:birdbreeder/features/birds/data/converter/string_null_empty_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brood_dto.freezed.dart';
part 'brood_dto.g.dart';

@freezed
class BroodDto with _$BroodDto {
  factory BroodDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @DateTimeNullEmptyConverter() DateTime? start,
    @DateTimeNullEmptyConverter() DateTime? end,
    @StringNullEmptyConverter() String? notes,
    @StringNullEmptyConverter() String? cage,
    @StringNullEmptyConverter() String? breedingPair,
    String? user,
  }) = _BroodDto;

  factory BroodDto.fromJson(Map<String, dynamic> json) =>
      _$BroodDtoFromJson(json);
}
