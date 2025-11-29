// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/converter/utc_date_time_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_dto.freezed.dart';
part 'finance_dto.g.dart';

@freezed
abstract class FinanceDto with _$FinanceDto {
  const factory FinanceDto({
    required String id,
    @JsonKey(name: 'category') required String categoryId,
    required String title,
    required double amount,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @StringNullEmptyConverter() String? notes,
    @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
    @UtcDateTimeConverter() DateTime? date,
  }) = _FinanceDto;

  factory FinanceDto.fromJson(Map<String, dynamic> json) =>
      _$FinanceDtoFromJson(json);
}
