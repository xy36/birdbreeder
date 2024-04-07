// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_color_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdColorDtoImpl _$$BirdColorDtoImplFromJson(Map<String, dynamic> json) =>
    _$BirdColorDtoImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    )..lastUpdated = json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String);

Map<String, dynamic> _$$BirdColorDtoImplToJson(_$BirdColorDtoImpl instance) =>
    <String, dynamic>{
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
    };
