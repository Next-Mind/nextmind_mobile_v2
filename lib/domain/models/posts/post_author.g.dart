// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasePostAuthor _$BasePostAuthorFromJson(Map<String, dynamic> json) =>
    _BasePostAuthor(
      id: json['id'] as String,
      name: json['name'] as String,
      photoUrl: json['photo_url'] as String,
    );

Map<String, dynamic> _$BasePostAuthorToJson(_BasePostAuthor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo_url': instance.photoUrl,
    };
