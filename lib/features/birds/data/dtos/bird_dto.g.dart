// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bird_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirdDtoImpl _$$BirdDtoImplFromJson(Map<String, dynamic> json) =>
    _$BirdDtoImpl(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      ringnumber: const StringNullEmptyConverter()
          .fromJson(json['ringnumber'] as String?),
      born:
          const DateTimeNullEmptyConverter().fromJson(json['born'] as String?),
      died:
          const DateTimeNullEmptyConverter().fromJson(json['died'] as String?),
      sell:
          const DateTimeNullEmptyConverter().fromJson(json['sell'] as String?),
      bought: const DateTimeNullEmptyConverter()
          .fromJson(json['bought'] as String?),
      species:
          const StringNullEmptyConverter().fromJson(json['species'] as String?),
      color:
          const StringNullEmptyConverter().fromJson(json['color'] as String?),
      cage: const StringNullEmptyConverter().fromJson(json['cage'] as String?),
      father:
          const StringNullEmptyConverter().fromJson(json['father'] as String?),
      mother:
          const StringNullEmptyConverter().fromJson(json['mother'] as String?),
      boughtPrice: (json['bought_price'] as num?)?.toDouble(),
      sellPriceOffer: (json['sell_price_offer'] as num?)?.toDouble(),
      sellPriceReal: (json['sell_price_real'] as num?)?.toDouble(),
      sex: $enumDecodeNullable(_$SexEnumMap, json['sex']) ?? Sex.unknown,
      sold: json['sold'] as bool?,
      isEgg: json['isEgg'] as bool?,
      laid:
          const DateTimeNullEmptyConverter().fromJson(json['laid'] as String?),
      hatched: const DateTimeNullEmptyConverter()
          .fromJson(json['hatched'] as String?),
      flowOut: const DateTimeNullEmptyConverter()
          .fromJson(json['flowOut'] as String?),
      brood:
          const StringNullEmptyConverter().fromJson(json['brood'] as String?),
      user: json['user'] as String?,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BirdDtoImplToJson(_$BirdDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'ringnumber':
          const StringNullEmptyConverter().toJson(instance.ringnumber),
      'born': const DateTimeNullEmptyConverter().toJson(instance.born),
      'died': const DateTimeNullEmptyConverter().toJson(instance.died),
      'sell': const DateTimeNullEmptyConverter().toJson(instance.sell),
      'bought': const DateTimeNullEmptyConverter().toJson(instance.bought),
      'species': const StringNullEmptyConverter().toJson(instance.species),
      'color': const StringNullEmptyConverter().toJson(instance.color),
      'cage': const StringNullEmptyConverter().toJson(instance.cage),
      'father': const StringNullEmptyConverter().toJson(instance.father),
      'mother': const StringNullEmptyConverter().toJson(instance.mother),
      'bought_price': instance.boughtPrice,
      'sell_price_offer': instance.sellPriceOffer,
      'sell_price_real': instance.sellPriceReal,
      'sex': _$SexEnumMap[instance.sex]!,
      'sold': instance.sold,
      'isEgg': instance.isEgg,
      'laid': const DateTimeNullEmptyConverter().toJson(instance.laid),
      'hatched': const DateTimeNullEmptyConverter().toJson(instance.hatched),
      'flowOut': const DateTimeNullEmptyConverter().toJson(instance.flowOut),
      'brood': const StringNullEmptyConverter().toJson(instance.brood),
      'user': instance.user,
      'children': instance.children,
    };

const _$SexEnumMap = {
  Sex.male: 'male',
  Sex.female: 'female',
  Sex.unknown: 'unknown',
};
