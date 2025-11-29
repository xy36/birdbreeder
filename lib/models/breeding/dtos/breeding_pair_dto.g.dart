// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeding_pair_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BreedingPairDto _$BreedingPairDtoFromJson(Map<String, dynamic> json) =>
    _BreedingPairDto(
      id: json['id'] as String,
      fatherId: json['father'] as String,
      motherId: json['mother'] as String,
      status: $enumDecode(_$BreedingPairStatusEnumMap, json['status']),
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      start: const UtcDateTimeConverter().fromJson(json['start'] as String?),
      end: const UtcDateTimeConverter().fromJson(json['end'] as String?),
      cageId: json['cage'] as String?,
      notes:
          const StringNullEmptyConverter().fromJson(json['notes'] as String?),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$BreedingPairDtoToJson(_BreedingPairDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'father': instance.fatherId,
      'mother': instance.motherId,
      'status': _$BreedingPairStatusEnumMap[instance.status]!,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'start': const UtcDateTimeConverter().toJson(instance.start),
      'end': const UtcDateTimeConverter().toJson(instance.end),
      'cage': instance.cageId,
      'notes': const StringNullEmptyConverter().toJson(instance.notes),
      'user': instance.user,
    };

const _$BreedingPairStatusEnumMap = {
  BreedingPairStatus.active: 'active',
  BreedingPairStatus.paused: 'paused',
  BreedingPairStatus.finished: 'finished',
};
