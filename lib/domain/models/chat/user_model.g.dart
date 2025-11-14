// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'user_model.dart';

_$_ChatUserModel _$$_ChatUserModelFromJson(Map<String, dynamic> json) =>
    _$_ChatUserModel(
      id: json['id'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photo_url'] as String?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$$_ChatUserModelToJson(_$_ChatUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photo_url': instance.photoUrl,
      'nickname': instance.nickname,
    };
