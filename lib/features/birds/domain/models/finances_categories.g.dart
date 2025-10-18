// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finances_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancesCategoriesImpl _$$FinancesCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$FinancesCategoriesImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      kind: $enumDecode(_$FinancesCategoriesKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$$FinancesCategoriesImplToJson(
        _$FinancesCategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'kind': _$FinancesCategoriesKindEnumMap[instance.kind]!,
    };

const _$FinancesCategoriesKindEnumMap = {
  FinancesCategoriesKind.income: 'income',
  FinancesCategoriesKind.expense: 'expense',
};
