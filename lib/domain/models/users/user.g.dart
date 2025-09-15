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
  emailVerified: json['email_verified'] as bool,
  cpf: json['cpf'] as String?,
  birthDate: json['birth_date'] as String?,
  photoUrl: json['photo_url'] as String?,
  isNewUser: json['is_new_user'] as bool? ?? false,
  token: json['token'] as String,
  phones:
      (json['phones'] as List<dynamic>?)
          ?.map((e) => UserPhone.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <UserPhone>[],
  addresses:
      (json['addresses'] as List<dynamic>?)
          ?.map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <UserAddress>[],
  profile: json['profile'] == null
      ? null
      : UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$LoggedUserToJson(LoggedUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified': instance.emailVerified,
      'cpf': instance.cpf,
      'birth_date': instance.birthDate,
      'photo_url': instance.photoUrl,
      'is_new_user': instance.isNewUser,
      'token': instance.token,
      'phones': instance.phones,
      'addresses': instance.addresses,
      'profile': instance.profile,
      'runtimeType': instance.$type,
    };
