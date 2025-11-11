// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Appointment _$AppointmentFromJson(Map<String, dynamic> json) =>
    _Appointment(
      id: json['id'] as String,
      availabilityId: json['availability_id'] as String,
      psychologistId: json['psychologist_id'] as String,
      scheduledAt: DateTime.parse(json['scheduled_at'] as String),
      description: json['description'] as String?,
      status: json['status'] as String,
      psychologist: json['psychologist'] == null
          ? null
          : Psychologist.fromJson(
              json['psychologist'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AppointmentToJson(_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'availability_id': instance.availabilityId,
      'psychologist_id': instance.psychologistId,
      'scheduled_at': instance.scheduledAt.toIso8601String(),
      'description': instance.description,
      'status': instance.status,
      'psychologist': instance.psychologist?.toJson(),
    };

_AppointmentsPage _$AppointmentsPageFromJson(Map<String, dynamic> json) =>
    _AppointmentsPage(
      data: (json['data'] as List<dynamic>)
          .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
      links: PaginationLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppointmentsPageToJson(_AppointmentsPage instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'links': instance.links.toJson(),
    };
