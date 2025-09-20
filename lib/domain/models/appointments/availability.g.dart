// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseAvailability _$BaseAvailabilityFromJson(Map<String, dynamic> json) =>
    _BaseAvailability(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      status: (json['status'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$BaseAvailabilityToJson(_BaseAvailability instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      'runtimeType': instance.$type,
    };

EmptyAvailability _$EmptyAvailabilityFromJson(Map<String, dynamic> json) =>
    EmptyAvailability($type: json['runtimeType'] as String?);

Map<String, dynamic> _$EmptyAvailabilityToJson(EmptyAvailability instance) =>
    <String, dynamic>{'runtimeType': instance.$type};
