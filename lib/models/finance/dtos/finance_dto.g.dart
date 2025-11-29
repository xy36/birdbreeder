// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FinanceDto _$FinanceDtoFromJson(Map<String, dynamic> json) => _FinanceDto(
      id: json['id'] as String,
      categoryId: json['category'] as String,
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      notes:
          const StringNullEmptyConverter().fromJson(json['notes'] as String?),
      birdId:
          const StringNullEmptyConverter().fromJson(json['bird'] as String?),
      date: const UtcDateTimeConverter().fromJson(json['date'] as String?),
    );

Map<String, dynamic> _$FinanceDtoToJson(_FinanceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.categoryId,
      'title': instance.title,
      'amount': instance.amount,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'notes': const StringNullEmptyConverter().toJson(instance.notes),
      'bird': const StringNullEmptyConverter().toJson(instance.birdId),
      'date': const UtcDateTimeConverter().toJson(instance.date),
    };
