// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  id: (json['id'] as num).toInt(),
  ra: json['ra'] as String? ?? 'ra',
  course: json['course'] as String? ?? 'curso',
  bio: json['bio'] as String? ?? 'bio',
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ra': instance.ra,
      'course': instance.course,
      'bio': instance.bio,
    };
