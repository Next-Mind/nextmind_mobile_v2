// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'psychologist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Psychologist _$PsychologistFromJson(Map<String, dynamic> json) =>
    _Psychologist(
      id: json['id'] as String,
      name: json['name'] as String,
      crp: json['crp'] as String?,
      specialty: json['specialty'] as String?,
      specialties: (json['specialties'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      bio: json['bio'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$PsychologistToJson(_Psychologist instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'crp': instance.crp,
      'specialty': instance.specialty,
      'specialties': instance.specialties,
      'bio': instance.bio,
      'photo_url': instance.photoUrl,
    };

_PsychologistsPage _$PsychologistsPageFromJson(Map<String, dynamic> json) =>
    _PsychologistsPage(
      data: (json['data'] as List<dynamic>)
          .map((e) => Psychologist.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
      links: PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PsychologistsPageToJson(_PsychologistsPage instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'links': instance.links.toJson(),
    };
