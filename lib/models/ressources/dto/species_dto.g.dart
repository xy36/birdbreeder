// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpeciesDto _$SpeciesDtoFromJson(Map<String, dynamic> json) => _SpeciesDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      latName: json['latName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      incubationDays: (json['incubationDays'] as num?)?.toInt(),
      fledgeDays: (json['fledgeDays'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$SpeciesDtoToJson(_SpeciesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latName': instance.latName,
      'imageUrl': instance.imageUrl,
      'incubationDays': instance.incubationDays,
      'fledgeDays': instance.fledgeDays,
      'notes': instance.notes,
      'user': instance.user,
    };
