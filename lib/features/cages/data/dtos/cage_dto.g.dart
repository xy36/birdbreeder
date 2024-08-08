// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cage_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CageDtoImpl _$$CageDtoImplFromJson(Map<String, dynamic> json) =>
    _$CageDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      depth: json['depth'] as int?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$CageDtoImplToJson(_$CageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
      'user': instance.user,
    };
