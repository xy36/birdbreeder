// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/features/birds/domain/models/finances_categories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'finances_categories_dto.freezed.dart';
part 'finances_categories_dto.g.dart';

@freezed
class FinancesCategoriesDto with _$FinancesCategoriesDto {
  const factory FinancesCategoriesDto({
    required String id,
    String? collectionId,
    String? collectionName,
    DateTime? created,
    DateTime? updated,
    required String name,
    required String color,
    required FinancesCategoriesKind kind,
  }) = _FinancesCategoriesDto;

  factory FinancesCategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$FinancesCategoriesDtoFromJson(json);
}
