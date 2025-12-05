// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Finance _$FinanceFromJson(Map<String, dynamic> json) => _Finance(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      amount: (json['amount'] as num).toDouble(),
      title: json['title'] as String,
      birdId: json['birdId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      notes: json['notes'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$FinanceToJson(_Finance instance) => <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'amount': instance.amount,
      'title': instance.title,
      'birdId': instance.birdId,
      'date': instance.date?.toIso8601String(),
      'notes': instance.notes,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
    };
