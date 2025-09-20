// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseAppointment _$BaseAppointmentFromJson(Map<String, dynamic> json) =>
    _BaseAppointment(
      id: json['id'] as String,
      availabilityId: json['availabilityId'] as String,
      userId: json['userId'] as String,
      description: json['description'] as String,
      resolution: json['resolution'] as String,
      notesPrivate: json['notesPrivate'] as String,
      attachmentPath: json['attachmentPath'] as String,
      sessionLink: json['sessionLink'] as String,
      status: json['status'] as String,
      cancelledBy: json['cancelledBy'] as String,
      cancelReason: json['cancelReason'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      reminderSent: json['reminderSent'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseAppointmentToJson(_BaseAppointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'availabilityId': instance.availabilityId,
      'userId': instance.userId,
      'description': instance.description,
      'resolution': instance.resolution,
      'notesPrivate': instance.notesPrivate,
      'attachmentPath': instance.attachmentPath,
      'sessionLink': instance.sessionLink,
      'status': instance.status,
      'cancelledBy': instance.cancelledBy,
      'cancelReason': instance.cancelReason,
      'durationMinutes': instance.durationMinutes,
      'rating': instance.rating,
      'reminderSent': instance.reminderSent,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'runtimeType': instance.$type,
    };

NextAppointment _$NextAppointmentFromJson(Map<String, dynamic> json) =>
    NextAppointment(
      id: (json['id'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NextAppointmentToJson(NextAppointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'runtimeType': instance.$type,
    };

EmptyAppointment _$EmptyAppointmentFromJson(Map<String, dynamic> json) =>
    EmptyAppointment($type: json['runtimeType'] as String?);

Map<String, dynamic> _$EmptyAppointmentToJson(EmptyAppointment instance) =>
    <String, dynamic>{'runtimeType': instance.$type};
