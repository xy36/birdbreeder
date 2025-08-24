// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdImpl _$$BirdImplFromJson(Map<String, dynamic> json) => _$BirdImpl(
      id: json['id'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      ringNumber: json['ringNumber'] as String?,
      speciesId: json['speciesId'] as String?,
      colorId: json['colorId'] as String?,
      ownerId: json['ownerId'] as String?,
      sex: $enumDecodeNullable(_$SexEnumMap, json['sex']) ?? Sex.unknown,
      fatherId: json['fatherId'] as String?,
      motherId: json['motherId'] as String?,
      cageId: json['cageId'] as String?,
      broodId: json['broodId'] as String?,
      laidAt: json['laidAt'] == null
          ? null
          : DateTime.parse(json['laidAt'] as String),
      hatchedAt: json['hatchedAt'] == null
          ? null
          : DateTime.parse(json['hatchedAt'] as String),
      fledgedAt: json['fledgedAt'] == null
          ? null
          : DateTime.parse(json['fledgedAt'] as String),
      diedAt: json['diedAt'] == null
          ? null
          : DateTime.parse(json['diedAt'] as String),
      saleStatus:
          $enumDecodeNullable(_$SaleStatusEnumMap, json['saleStatus']) ??
              SaleStatus.notForSale,
      listedAt: json['listedAt'] == null
          ? null
          : DateTime.parse(json['listedAt'] as String),
      soldAt: json['soldAt'] == null
          ? null
          : DateTime.parse(json['soldAt'] as String),
      askingPrice: (json['askingPrice'] as num?)?.toDouble(),
      finalPrice: (json['finalPrice'] as num?)?.toDouble(),
      boughtAt: json['boughtAt'] == null
          ? null
          : DateTime.parse(json['boughtAt'] as String),
      boughtPrice: (json['boughtPrice'] as num?)?.toDouble(),
      boughtFromId: json['boughtFromId'] as String?,
      soldToId: json['soldToId'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$BirdImplToJson(_$BirdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'ringNumber': instance.ringNumber,
      'speciesId': instance.speciesId,
      'colorId': instance.colorId,
      'ownerId': instance.ownerId,
      'sex': _$SexEnumMap[instance.sex]!,
      'fatherId': instance.fatherId,
      'motherId': instance.motherId,
      'cageId': instance.cageId,
      'broodId': instance.broodId,
      'laidAt': instance.laidAt?.toIso8601String(),
      'hatchedAt': instance.hatchedAt?.toIso8601String(),
      'fledgedAt': instance.fledgedAt?.toIso8601String(),
      'diedAt': instance.diedAt?.toIso8601String(),
      'saleStatus': _$SaleStatusEnumMap[instance.saleStatus]!,
      'listedAt': instance.listedAt?.toIso8601String(),
      'soldAt': instance.soldAt?.toIso8601String(),
      'askingPrice': instance.askingPrice,
      'finalPrice': instance.finalPrice,
      'boughtAt': instance.boughtAt?.toIso8601String(),
      'boughtPrice': instance.boughtPrice,
      'boughtFromId': instance.boughtFromId,
      'soldToId': instance.soldToId,
      'notes': instance.notes,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
  Sex.unknown: 'unknown',
};

const _$SaleStatusEnumMap = {
  SaleStatus.notForSale: 'notForSale',
  SaleStatus.listed: 'listed',
  SaleStatus.reserved: 'reserved',
  SaleStatus.sold: 'sold',
};
