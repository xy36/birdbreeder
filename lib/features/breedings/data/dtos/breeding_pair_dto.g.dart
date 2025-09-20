// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breeding_pair_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BreedingPairDtoImpl _$$BreedingPairDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BreedingPairDtoImpl(
      id: json['id'] as String,
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
      fatherId: json['father'] as String,
      motherId: json['mother'] as String,
      cageId: json['cage'] as String?,
      status: $enumDecode(_$BreedingPairStatusEnumMap, json['status']),
      notes:
          const StringNullEmptyConverter().fromJson(json['notes'] as String?),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$BreedingPairDtoImplToJson(
        _$BreedingPairDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'start': const UtcDateTimeConverter().toJson(instance.start),
      'end': const UtcDateTimeConverter().toJson(instance.end),
      'father': instance.fatherId,
      'mother': instance.motherId,
      'cage': instance.cageId,
      'status': _$BreedingPairStatusEnumMap[instance.status]!,
      'notes': const StringNullEmptyConverter().toJson(instance.notes),
      'user': instance.user,
    };

const _$BreedingPairStatusEnumMap = {
  BreedingPairStatus.active: 'active',
  BreedingPairStatus.paused: 'paused',
  BreedingPairStatus.finished: 'finished',
};
