// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentProfile _$StudentProfileFromJson(Map<String, dynamic> json) =>
    StudentProfile(
      id: (json['id'] as num).toInt(),
      ra: json['ra'] as String? ?? 'undefined',
      course: json['course'] as String? ?? 'undefined',
      bio: json['bio'] as String? ?? 'undefined',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$StudentProfileToJson(StudentProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ra': instance.ra,
      'course': instance.course,
      'bio': instance.bio,
      'runtimeType': instance.$type,
    };

EmptyUserProfile _$EmptyUserProfileFromJson(Map<String, dynamic> json) =>
    EmptyUserProfile($type: json['runtimeType'] as String?);

Map<String, dynamic> _$EmptyUserProfileToJson(EmptyUserProfile instance) =>
    <String, dynamic>{'runtimeType': instance.$type};
