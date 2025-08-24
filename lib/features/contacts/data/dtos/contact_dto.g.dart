// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDtoImpl _$$ContactDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContactDtoImpl(
      id: json['id'] as String,
      number: json['number'] as String?,
      phone: json['phone'] as String?,
      firstName: json['firstName'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      postalCode: json['postalCode'] as String?,
      website: json['website'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$ContactDtoImplToJson(_$ContactDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'website': instance.website,
      'user': instance.user,
    };
