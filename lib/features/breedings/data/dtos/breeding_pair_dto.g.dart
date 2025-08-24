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
      start:
          const DateTimeNullEmptyConverter().fromJson(json['start'] as String?),
      end: const DateTimeNullEmptyConverter().fromJson(json['end'] as String?),
      father:
          const StringNullEmptyConverter().fromJson(json['father'] as String?),
      mother:
          const StringNullEmptyConverter().fromJson(json['mother'] as String?),
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
      'start': const DateTimeNullEmptyConverter().toJson(instance.start),
      'end': const DateTimeNullEmptyConverter().toJson(instance.end),
      'father': const StringNullEmptyConverter().toJson(instance.father),
      'mother': const StringNullEmptyConverter().toJson(instance.mother),
      'notes': const StringNullEmptyConverter().toJson(instance.notes),
      'user': instance.user,
    };
