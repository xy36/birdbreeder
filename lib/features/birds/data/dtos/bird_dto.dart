// ignore_for_file: invalid_annotation_target

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
    @DateTimeNullEmptyConverter() DateTime? died,
    @DateTimeNullEmptyConverter() DateTime? sell,
    @DateTimeNullEmptyConverter() DateTime? bought,
    @StringNullEmptyConverter() String? species,
    @StringNullEmptyConverter() String? color,
    @StringNullEmptyConverter() String? cage,
    @StringNullEmptyConverter() String? father,
    @StringNullEmptyConverter() String? mother,
    @JsonKey(name: 'bought_price') double? boughtPrice,
    @JsonKey(name: 'sell_price_offer') double? sellPriceOffer,
    @JsonKey(name: 'sell_price_real') double? sellPriceReal,
    @Default(Sex.unknown) Sex sex,
    ExpandDto? expand,
    bool? sold,
    String? user,
    @Default([]) List<String> children,
  }) = _BirdDto;

  factory BirdDto.fromJson(Map<String, dynamic> json) =>
      _$BirdDtoFromJson(json);
}
