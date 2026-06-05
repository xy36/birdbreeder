// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_color_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BirdColorDto _$BirdColorDtoFromJson(Map<String, dynamic> json) =>
    _BirdColorDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      hex: json['hex'] as String?,
      inheritance: json['inheritance'] as String?,
      notes: json['notes'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$BirdColorDtoToJson(_BirdColorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hex': instance.hex,
      'inheritance': instance.inheritance,
      'notes': instance.notes,
      'user': instance.user,
    };
