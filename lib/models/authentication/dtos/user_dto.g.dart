// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: json['id'] as String,
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      verified: json['verified'] as bool?,
      emailVisibility: json['emailVisibility'] as bool?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'verified': instance.verified,
      'emailVisibility': instance.emailVisibility,
      'email': instance.email,
      'avatar': instance.avatar,
    };
