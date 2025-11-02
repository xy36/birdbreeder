// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/features/birds/domain/models/finance_category_kind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_category_dto.freezed.dart';
part 'finance_category_dto.g.dart';

@freezed
class FinanceCategoryDto with _$FinanceCategoryDto {
  const factory FinanceCategoryDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    required String name,
    required String color,
    required FinanceCategoryKind kind,
  }) = _FinanceCategoryDto;

  factory FinanceCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$FinanceCategoryDtoFromJson(json);
}
