// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brood_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BroodDtoImpl _$$BroodDtoImplFromJson(Map<String, dynamic> json) =>
    _$BroodDtoImpl(
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
      notes:
          const StringNullEmptyConverter().fromJson(json['notes'] as String?),
      cage: const StringNullEmptyConverter().fromJson(json['cage'] as String?),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$BroodDtoImplToJson(_$BroodDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'start': const DateTimeNullEmptyConverter().toJson(instance.start),
      'end': const DateTimeNullEmptyConverter().toJson(instance.end),
      'notes': const StringNullEmptyConverter().toJson(instance.notes),
      'cage': const StringNullEmptyConverter().toJson(instance.cage),
      'children': instance.children,
      'user': instance.user,
    };
