// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceCategoryDtoImpl _$$FinanceCategoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FinanceCategoryDtoImpl(
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
      kind: $enumDecode(_$FinanceCategoryKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$$FinanceCategoryDtoImplToJson(
        _$FinanceCategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'name': instance.name,
      'color': instance.color,
      'kind': _$FinanceCategoryKindEnumMap[instance.kind]!,
    };

const _$FinanceCategoryKindEnumMap = {
  FinanceCategoryKind.income: 'income',
  FinanceCategoryKind.expense: 'expense',
};
