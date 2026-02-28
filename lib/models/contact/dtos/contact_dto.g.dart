// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactDto _$ContactDtoFromJson(Map<String, dynamic> json) => _ContactDto(
      id: json['id'] as String,
      number: json['number'] as String?,
      phone: json['phone'] as String?,
      cellPhoneNumber: json['cellPhoneNumber'] as String?,
      title: $enumDecodeNullable(_$ContactTitleEnumMap, json['title'],
              unknownValue: ContactTitle.none) ??
          ContactTitle.none,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      postalCode: json['postalCode'] as String?,
      website: json['website'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$ContactDtoToJson(_ContactDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'phone': instance.phone,
      'cellPhoneNumber': instance.cellPhoneNumber,
      'title': _$ContactTitleEnumMap[instance.title],
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'website': instance.website,
      'user': instance.user,
    };

const _$ContactTitleEnumMap = {
  ContactTitle.none: 'none',
  ContactTitle.mr: 'mr',
  ContactTitle.ms: 'ms',
};
