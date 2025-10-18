// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finances.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancesImpl _$$FinancesImplFromJson(Map<String, dynamic> json) =>
    _$FinancesImpl(
      id: json['id'] as String,
      financesCategoriesId: json['financesCategoriesId'] as String,
      birdId: json['birdId'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$FinancesImplToJson(_$FinancesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'financesCategoriesId': instance.financesCategoriesId,
      'birdId': instance.birdId,
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
    };
