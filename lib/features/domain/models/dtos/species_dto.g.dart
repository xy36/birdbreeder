// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesDtoImpl _$$SpeciesDtoImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesDtoImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      latName: json['latName'] as String?,
    )..lastUpdated = json['lastUpdated'] == null
        ? null
        : DateTime.parse(json['lastUpdated'] as String);

Map<String, dynamic> _$$SpeciesDtoImplToJson(_$SpeciesDtoImpl instance) =>
    <String, dynamic>{
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'id': instance.id,
      'name': instance.name,
      'latName': instance.latName,
    };
