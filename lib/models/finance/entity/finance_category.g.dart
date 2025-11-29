// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinancesCategories _$FinancesCategoriesFromJson(Map<String, dynamic> json) =>
    _FinancesCategories(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      kind: $enumDecode(_$FinanceCategoryKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$FinancesCategoriesToJson(_FinancesCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'kind': _$FinanceCategoryKindEnumMap[instance.kind]!,
    };

const _$FinanceCategoryKindEnumMap = {
  FinanceCategoryKind.income: 'income',
  FinanceCategoryKind.expense: 'expense',
};
