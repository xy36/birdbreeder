// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeciesDtoImpl _$$SpeciesDtoImplFromJson(Map<String, dynamic> json) =>
    _$SpeciesDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      latName: json['latName'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$SpeciesDtoImplToJson(_$SpeciesDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latName': instance.latName,
      'user': instance.user,
    };
