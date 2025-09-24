// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseContact _$BaseContactFromJson(Map<String, dynamic> json) => _BaseContact(
  id: json['id'] as String,
  nickname: json['nickname'] as String,
  photoUrl: json['photo_url'] as String,
);

Map<String, dynamic> _$BaseContactToJson(_BaseContact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photo_url': instance.photoUrl,
    };
