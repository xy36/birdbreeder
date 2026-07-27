// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BirdImage _$BirdImageFromJson(Map<String, dynamic> json) => _BirdImage(
      id: json['id'] as String,
      birdId: json['birdId'] as String,
      hash: json['hash'] as String,
      position: (json['position'] as num?)?.toInt() ?? 0,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$BirdImageToJson(_BirdImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'birdId': instance.birdId,
      'hash': instance.hash,
      'position': instance.position,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
    };
