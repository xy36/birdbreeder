// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/features/birds/data/converter/string_null_empty_converter.dart';
import 'package:birdbreeder/features/birds/data/converter/utc_date_time_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_dto.freezed.dart';
part 'finance_dto.g.dart';

@freezed
class FinanceDto with _$FinanceDto {
  const factory FinanceDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    @JsonKey(name: 'category') required String categoryId,
    required String title,
    @StringNullEmptyConverter() String? notes,
    @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
    @UtcDateTimeConverter() DateTime? date,
    required double amount,
  }) = _FinanceDto;

  factory FinanceDto.fromJson(Map<String, dynamic> json) =>
      _$FinanceDtoFromJson(json);
}
