// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdDtoImpl _$$BirdDtoImplFromJson(Map<String, dynamic> json) =>
    _$BirdDtoImpl(
      id: json['id'] as String?,
      ringnumber: json['ringnumber'] as String?,
      speciesId: json['speciesId'] as String?,
      colorId: json['colorId'] as String?,
      cageId: json['cageId'] as String?,
      sex: $enumDecodeNullable(_$SexEnumMap, json['sex']),
      origin: $enumDecodeNullable(_$OriginEnumMap, json['origin']),
      bornDate: json['bornDate'] == null
          ? null
          : DateTime.parse(json['bornDate'] as String),
      diedDate: json['diedDate'] == null
          ? null
          : DateTime.parse(json['diedDate'] as String),
      boughtDate: json['boughtDate'] == null
          ? null
          : DateTime.parse(json['boughtDate'] as String),
      sellDate: json['sellDate'] == null
          ? null
          : DateTime.parse(json['sellDate'] as String),
      boughtPrice: (json['boughtPrice'] as num?)?.toDouble(),
      sellPriceOffer: (json['sellPriceOffer'] as num?)?.toDouble(),
      sellPriceReal: (json['sellPriceReal'] as num?)?.toDouble(),
      fatherRingnumber: json['fatherRingnumber'] as String?,
      motherRingnumber: json['motherRingnumber'] as String?,
      partnerRingnumber: json['partnerRingnumber'] as String?,
      isForSale: json['isForSale'] as bool?,
    );

Map<String, dynamic> _$$BirdDtoImplToJson(_$BirdDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ringnumber': instance.ringnumber,
      'speciesId': instance.speciesId,
      'colorId': instance.colorId,
      'cageId': instance.cageId,
      'sex': _$SexEnumMap[instance.sex],
      'origin': _$OriginEnumMap[instance.origin],
      'bornDate': instance.bornDate?.toIso8601String(),
      'diedDate': instance.diedDate?.toIso8601String(),
      'boughtDate': instance.boughtDate?.toIso8601String(),
      'sellDate': instance.sellDate?.toIso8601String(),
      'boughtPrice': instance.boughtPrice,
      'sellPriceOffer': instance.sellPriceOffer,
      'sellPriceReal': instance.sellPriceReal,
      'fatherRingnumber': instance.fatherRingnumber,
      'motherRingnumber': instance.motherRingnumber,
      'partnerRingnumber': instance.partnerRingnumber,
      'isForSale': instance.isForSale,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
  Sex.unknown: 'unknown',
};

const _$OriginEnumMap = {
  Origin.bought: 'bought',
  Origin.bred: 'bred',
  Origin.stock: 'stock',
  Origin.unknown: 'unknown',
};
