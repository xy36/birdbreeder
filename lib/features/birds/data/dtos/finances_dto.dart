// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/features/birds/data/converter/string_null_empty_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finances_dto.freezed.dart';
part 'finances_dto.g.dart';

@freezed
class FinancesDto with _$FinancesDto {
  const factory FinancesDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    required String financesCategoriesId,
    @StringNullEmptyConverter() String? birdId,
    DateTime? date,
    required double amount,
  }) = _FinancesDto;

  factory FinancesDto.fromJson(Map<String, dynamic> json) =>
      _$FinancesDtoFromJson(json);
}
