// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_color_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BirdColorDto _$BirdColorDtoFromJson(Map<String, dynamic> json) =>
    _BirdColorDto(
      id: json['id'] as String,
      name: json['name'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$BirdColorDtoToJson(_BirdColorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user': instance.user,
    };
