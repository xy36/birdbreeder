// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinanceImpl _$$FinanceImplFromJson(Map<String, dynamic> json) =>
    _$FinanceImpl(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      birdId: json['birdId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num).toDouble(),
      title: json['title'] as String,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$FinanceImplToJson(_$FinanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'birdId': instance.birdId,
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
      'title': instance.title,
      'notes': instance.notes,
    };
