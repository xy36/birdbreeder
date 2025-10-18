// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finances_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancesDtoImpl _$$FinancesDtoImplFromJson(Map<String, dynamic> json) =>
    _$FinancesDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      financesCategoriesId: json['financesCategoriesId'] as String,
      birdId:
          const StringNullEmptyConverter().fromJson(json['birdId'] as String?),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$FinancesDtoImplToJson(_$FinancesDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'financesCategoriesId': instance.financesCategoriesId,
      'birdId': const StringNullEmptyConverter().toJson(instance.birdId),
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
    };
