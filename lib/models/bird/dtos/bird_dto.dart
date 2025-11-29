// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/converter/utc_date_time_converter.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_dto.freezed.dart';
part 'bird_dto.g.dart';

@freezed
abstract class BirdDto with _$BirdDto {
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
    @UtcDateTimeConverter() DateTime? laidAt,
    @UtcDateTimeConverter() DateTime? hatchedAt,
    @UtcDateTimeConverter() DateTime? fledgedAt,
    @UtcDateTimeConverter() DateTime? bornAt,
    @UtcDateTimeConverter() DateTime? diedAt,
    @Default(SaleStatus.notForSale) SaleStatus saleStatus,
    @UtcDateTimeConverter() DateTime? listedAt,
    @UtcDateTimeConverter() DateTime? soldAt,
    double? askingPrice,
    double? finalPrice,
    @UtcDateTimeConverter() DateTime? boughtAt,
    double? boughtPrice,
    @StringNullEmptyConverter() String? notes,
    @JsonKey(name: 'boughtFrom')
    @StringNullEmptyConverter()
    ContactId? boughtFromId,
    @JsonKey(name: 'soldTo') @StringNullEmptyConverter() ContactId? soldToId,
    @JsonKey(name: 'owner') @StringNullEmptyConverter() ContactId? ownerId,
    bool? unknownLifecycle,
    String? user,
  }) = _BirdDto;

  factory BirdDto.fromJson(Map<String, dynamic> json) =>
      _$BirdDtoFromJson(json);
}
