// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egg_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EggDto _$EggDtoFromJson(Map<String, dynamic> json) => _EggDto(
      id: json['id'] as String,
      broodId: json['brood'] as String,
      number: (json['number'] as num).toInt(),
      laidAt: DateTime.parse(json['laidAt'] as String),
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      hatchedAt:
          const UtcDateTimeConverter().fromJson(json['hatchedAt'] as String?),
      fledgedAt:
          const UtcDateTimeConverter().fromJson(json['fledgedAt'] as String?),
      status: $enumDecodeNullable(_$EggStatusEnumMap, json['status']) ??
          EggStatus.laid,
      ringnumber: const StringNullEmptyConverter()
          .fromJson(json['ringnumber'] as String?),
      colorId:
          const StringNullEmptyConverter().fromJson(json['color'] as String?),
      cageId:
          const StringNullEmptyConverter().fromJson(json['cage'] as String?),
      speciesId:
          const StringNullEmptyConverter().fromJson(json['species'] as String?),
      birdId:
          const StringNullEmptyConverter().fromJson(json['birdId'] as String?),
      notes:
          const StringNullEmptyConverter().fromJson(json['notes'] as String?),
    );

Map<String, dynamic> _$EggDtoToJson(_EggDto instance) => <String, dynamic>{
      'id': instance.id,
      'brood': instance.broodId,
      'number': instance.number,
      'laidAt': instance.laidAt.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'hatchedAt': const UtcDateTimeConverter().toJson(instance.hatchedAt),
      'fledgedAt': const UtcDateTimeConverter().toJson(instance.fledgedAt),
      'status': _$EggStatusEnumMap[instance.status]!,
      'ringnumber':
          const StringNullEmptyConverter().toJson(instance.ringnumber),
      'color': const StringNullEmptyConverter().toJson(instance.colorId),
      'cage': const StringNullEmptyConverter().toJson(instance.cageId),
      'species': const StringNullEmptyConverter().toJson(instance.speciesId),
      'birdId': const StringNullEmptyConverter().toJson(instance.birdId),
      'notes': const StringNullEmptyConverter().toJson(instance.notes),
    };

const _$EggStatusEnumMap = {
  EggStatus.laid: 'laid',
  EggStatus.fertilized: 'fertilized',
  EggStatus.unfertilized: 'unfertilized',
  EggStatus.hatched: 'hatched',
  EggStatus.fledged: 'fledged',
  EggStatus.dead: 'dead',
  EggStatus.unknown: 'unknown',
};
