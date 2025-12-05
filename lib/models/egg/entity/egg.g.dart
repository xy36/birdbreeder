// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'egg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Egg _$EggFromJson(Map<String, dynamic> json) => _Egg(
      id: json['id'] as String,
      broodId: json['broodId'] as String,
      number: (json['number'] as num).toInt(),
      laidAt: DateTime.parse(json['laidAt'] as String),
      hatchedAt: json['hatchedAt'] == null
          ? null
          : DateTime.parse(json['hatchedAt'] as String),
      fledgedAt: json['fledgedAt'] == null
          ? null
          : DateTime.parse(json['fledgedAt'] as String),
      status: $enumDecodeNullable(_$EggStatusEnumMap, json['status']) ??
          EggStatus.laid,
      ringnumber: json['ringnumber'] as String?,
      colorId: json['colorId'] as String?,
      cageId: json['cageId'] as String?,
      speciesId: json['speciesId'] as String?,
      birdId: json['birdId'] as String?,
      notes: json['notes'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$EggToJson(_Egg instance) => <String, dynamic>{
      'id': instance.id,
      'broodId': instance.broodId,
      'number': instance.number,
      'laidAt': instance.laidAt.toIso8601String(),
      'hatchedAt': instance.hatchedAt?.toIso8601String(),
      'fledgedAt': instance.fledgedAt?.toIso8601String(),
      'status': _$EggStatusEnumMap[instance.status]!,
      'ringnumber': instance.ringnumber,
      'colorId': instance.colorId,
      'cageId': instance.cageId,
      'speciesId': instance.speciesId,
      'birdId': instance.birdId,
      'notes': instance.notes,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
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
