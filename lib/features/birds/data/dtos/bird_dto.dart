// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/features/birds/data/converter/date_time_null_empty_converter.dart';
import 'package:birdbreeder/features/birds/data/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
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
    @JsonKey(name: 'ringnumber') @StringNullEmptyConverter() String? ringNumber,
    @JsonKey(name: 'species') @StringNullEmptyConverter() String? speciesId,
    @JsonKey(name: 'color') @StringNullEmptyConverter() String? colorId,
    @Default(Sex.unknown) Sex sex,
    @JsonKey(name: 'father') @StringNullEmptyConverter() String? fatherId,
    @JsonKey(name: 'mother') @StringNullEmptyConverter() String? motherId,
    @JsonKey(name: 'cage') @StringNullEmptyConverter() String? cageId,
    @JsonKey(name: 'brood') @StringNullEmptyConverter() String? broodId,
    @DateTimeNullEmptyConverter() DateTime? laidAt,
    @DateTimeNullEmptyConverter() DateTime? hatchedAt,
    @DateTimeNullEmptyConverter() DateTime? fledgedAt,
    @DateTimeNullEmptyConverter() DateTime? diedAt,
    @Default(SaleStatus.notForSale) SaleStatus saleStatus,
    @DateTimeNullEmptyConverter() DateTime? listedAt,
    @DateTimeNullEmptyConverter() DateTime? soldAt,
    double? askingPrice,
    double? finalPrice,
    @DateTimeNullEmptyConverter() DateTime? boughtAt,
    double? boughtPrice,
    @StringNullEmptyConverter() String? notes,
    @JsonKey(name: 'boughtFrom')
    @StringNullEmptyConverter()
    ContactId? boughtFromId,
    @JsonKey(name: 'soldTo') @StringNullEmptyConverter() ContactId? soldToId,
    @JsonKey(name: 'owner') @StringNullEmptyConverter() ContactId? ownerId,
    String? user,
  }) = _BirdDto;

  factory BirdDto.fromJson(Map<String, dynamic> json) =>
      _$BirdDtoFromJson(json);
}
