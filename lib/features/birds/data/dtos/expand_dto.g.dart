// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpandDtoImpl _$$ExpandDtoImplFromJson(Map<String, dynamic> json) =>
    _$ExpandDtoImpl(
      color: json['color'] == null
          ? null
          : BirdColorDto.fromJson(json['color'] as Map<String, dynamic>),
      species: json['species'] == null
          ? null
          : SpeciesDto.fromJson(json['species'] as Map<String, dynamic>),
      cage: json['cage'] == null
          ? null
          : CageDto.fromJson(json['cage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExpandDtoImplToJson(_$ExpandDtoImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'species': instance.species,
      'cage': instance.cage,
    };
