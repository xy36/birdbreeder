import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finance_category_dto.freezed.dart';
part 'finance_category_dto.g.dart';

@freezed
abstract class FinanceCategoryDto with _$FinanceCategoryDto {
  const factory FinanceCategoryDto({
    required String id,
    required String name,
    required String color,
    required FinanceCategoryKind kind,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
  }) = _FinanceCategoryDto;

  factory FinanceCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$FinanceCategoryDtoFromJson(json);
}
