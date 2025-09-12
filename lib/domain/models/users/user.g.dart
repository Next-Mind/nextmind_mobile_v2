// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseUser _$BaseUserFromJson(Map<String, dynamic> json) => _BaseUser(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$BaseUserToJson(_BaseUser instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'runtimeType': instance.$type,
};

NotLoggedUser _$NotLoggedUserFromJson(Map<String, dynamic> json) =>
    NotLoggedUser($type: json['runtimeType'] as String?);

Map<String, dynamic> _$NotLoggedUserToJson(NotLoggedUser instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

LoggedUser _$LoggedUserFromJson(Map<String, dynamic> json) => LoggedUser(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  token: json['token'] as String,
  phones: (json['phones'] as List<dynamic>?)
      ?.map((e) => UserPhone.fromJson(e as Map<String, dynamic>))
      .toList(),
  addresses: (json['addresses'] as List<dynamic>?)
      ?.map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
      .toList(),
  profile: UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$LoggedUserToJson(LoggedUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
      'phones': instance.phones,
      'addresses': instance.addresses,
      'profile': instance.profile,
      'runtimeType': instance.$type,
    };
