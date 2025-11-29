// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpeciesDto _$SpeciesDtoFromJson(Map<String, dynamic> json) => _SpeciesDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      latName: json['latName'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$SpeciesDtoToJson(_SpeciesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latName': instance.latName,
      'user': instance.user,
    };
