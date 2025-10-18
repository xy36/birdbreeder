// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finances_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancesCategoriesDtoImpl _$$FinancesCategoriesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FinancesCategoriesDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      name: json['name'] as String,
      color: json['color'] as String,
      kind: $enumDecode(_$FinancesCategoriesKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$$FinancesCategoriesDtoImplToJson(
        _$FinancesCategoriesDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'name': instance.name,
      'color': instance.color,
      'kind': _$FinancesCategoriesKindEnumMap[instance.kind]!,
    };

const _$FinancesCategoriesKindEnumMap = {
  FinancesCategoriesKind.income: 'income',
  FinancesCategoriesKind.expense: 'expense',
};
