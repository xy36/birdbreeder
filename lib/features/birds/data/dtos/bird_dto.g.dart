// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdDtoImpl _$$BirdDtoImplFromJson(Map<String, dynamic> json) =>
    _$BirdDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      ringNumber: const StringNullEmptyConverter()
          .fromJson(json['ringnumber'] as String?),
      speciesId:
          const StringNullEmptyConverter().fromJson(json['species'] as String?),
      colorId:
          const StringNullEmptyConverter().fromJson(json['color'] as String?),
      sex: $enumDecodeNullable(_$SexEnumMap, json['sex']) ?? Sex.unknown,
      fatherId:
          const StringNullEmptyConverter().fromJson(json['father'] as String?),
      motherId:
          const StringNullEmptyConverter().fromJson(json['mother'] as String?),
      cageId:
          const StringNullEmptyConverter().fromJson(json['cage'] as String?),
      broodId:
          const StringNullEmptyConverter().fromJson(json['brood'] as String?),
      laidAt: const DateTimeNullEmptyConverter()
          .fromJson(json['laidAt'] as String?),
      hatchedAt: const DateTimeNullEmptyConverter()
          .fromJson(json['hatchedAt'] as String?),
      fledgedAt: const DateTimeNullEmptyConverter()
          .fromJson(json['fledgedAt'] as String?),
      bornAt: const DateTimeNullEmptyConverter()
          .fromJson(json['bornAt'] as String?),
      diedAt: const DateTimeNullEmptyConverter()
          .fromJson(json['diedAt'] as String?),
      saleStatus:
          $enumDecodeNullable(_$SaleStatusEnumMap, json['saleStatus']) ??
              SaleStatus.notForSale,
      listedAt: const DateTimeNullEmptyConverter()
          .fromJson(json['listedAt'] as String?),
      soldAt: const DateTimeNullEmptyConverter()
          .fromJson(json['soldAt'] as String?),
      askingPrice: (json['askingPrice'] as num?)?.toDouble(),
      finalPrice: (json['finalPrice'] as num?)?.toDouble(),
      boughtAt: const DateTimeNullEmptyConverter()
          .fromJson(json['boughtAt'] as String?),
      boughtPrice: (json['boughtPrice'] as num?)?.toDouble(),
      notes:
          const StringNullEmptyConverter().fromJson(json['notes'] as String?),
      boughtFromId: const StringNullEmptyConverter()
          .fromJson(json['boughtFrom'] as String?),
      soldToId:
          const StringNullEmptyConverter().fromJson(json['soldTo'] as String?),
      ownerId:
          const StringNullEmptyConverter().fromJson(json['owner'] as String?),
      unknownLifecycle: json['unknownLifecycle'] as bool?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$BirdDtoImplToJson(_$BirdDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'ringnumber':
          const StringNullEmptyConverter().toJson(instance.ringNumber),
      'species': const StringNullEmptyConverter().toJson(instance.speciesId),
      'color': const StringNullEmptyConverter().toJson(instance.colorId),
      'sex': _$SexEnumMap[instance.sex]!,
      'father': const StringNullEmptyConverter().toJson(instance.fatherId),
      'mother': const StringNullEmptyConverter().toJson(instance.motherId),
      'cage': const StringNullEmptyConverter().toJson(instance.cageId),
      'brood': const StringNullEmptyConverter().toJson(instance.broodId),
      'laidAt': const DateTimeNullEmptyConverter().toJson(instance.laidAt),
      'hatchedAt':
          const DateTimeNullEmptyConverter().toJson(instance.hatchedAt),
      'fledgedAt':
          const DateTimeNullEmptyConverter().toJson(instance.fledgedAt),
      'bornAt': const DateTimeNullEmptyConverter().toJson(instance.bornAt),
      'diedAt': const DateTimeNullEmptyConverter().toJson(instance.diedAt),
      'saleStatus': _$SaleStatusEnumMap[instance.saleStatus]!,
      'listedAt': const DateTimeNullEmptyConverter().toJson(instance.listedAt),
      'soldAt': const DateTimeNullEmptyConverter().toJson(instance.soldAt),
      'askingPrice': instance.askingPrice,
      'finalPrice': instance.finalPrice,
      'boughtAt': const DateTimeNullEmptyConverter().toJson(instance.boughtAt),
      'boughtPrice': instance.boughtPrice,
      'notes': const StringNullEmptyConverter().toJson(instance.notes),
      'boughtFrom':
          const StringNullEmptyConverter().toJson(instance.boughtFromId),
      'soldTo': const StringNullEmptyConverter().toJson(instance.soldToId),
      'owner': const StringNullEmptyConverter().toJson(instance.ownerId),
      'unknownLifecycle': instance.unknownLifecycle,
      'user': instance.user,
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
