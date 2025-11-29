import 'package:birdbreeder/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/converter/utc_date_time_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brood_dto.freezed.dart';
part 'brood_dto.g.dart';

@freezed
abstract class BroodDto with _$BroodDto {
  factory BroodDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @UtcDateTimeConverter() DateTime? start,
    @UtcDateTimeConverter() DateTime? end,
    @StringNullEmptyConverter() String? notes,
    @StringNullEmptyConverter() String? cage,
    @StringNullEmptyConverter() String? breedingPair,
    String? user,
  }) = _BroodDto;

  factory BroodDto.fromJson(Map<String, dynamic> json) =>
      _$BroodDtoFromJson(json);
}
