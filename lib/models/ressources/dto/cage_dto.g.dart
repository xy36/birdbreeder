// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CageDto _$CageDtoFromJson(Map<String, dynamic> json) => _CageDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      depth: (json['depth'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$CageTypeEnumMap, json['type']),
      location: json['location'] as String?,
      capacity: (json['capacity'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$CageDtoToJson(_CageDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
      'type': _$CageTypeEnumMap[instance.type],
      'location': instance.location,
      'capacity': instance.capacity,
      'notes': instance.notes,
      'user': instance.user,
    };

const _$CageTypeEnumMap = {
  CageType.aviary: 'aviary',
  CageType.breedingBox: 'breedingBox',
  CageType.quarantine: 'quarantine',
};
