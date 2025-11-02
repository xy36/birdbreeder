// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancesCategoriesImpl _$$FinancesCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$FinancesCategoriesImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      kind: $enumDecode(_$FinanceCategoryKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$$FinancesCategoriesImplToJson(
        _$FinancesCategoriesImpl instance) =>
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
