// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      verified: json['verified'] as bool?,
      emailVisibility: json['emailVisibility'] as bool?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'verified': instance.verified,
      'emailVisibility': instance.emailVisibility,
      'email': instance.email,
      'avatar': instance.avatar,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
    };
