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
      user: json['user'] as String?,
    );

Map<String, dynamic> _$CageDtoToJson(_CageDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
      'user': instance.user,
    };
