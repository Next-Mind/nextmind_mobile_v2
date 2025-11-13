import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/pagination.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
sealed class Appointment with _$Appointment {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Appointment({
    required String id,
    required String availabilityId,
    required String psychologistId,
    required DateTime scheduledAt,
    String? description,
    required String status,
    Psychologist? psychologist,
  }) = BaseAppointment;

  const factory Appointment.empty() = EmptyAppointment;

  factory Appointment.fromJson(Map<String, dynamic> json) {
    final normalized = Map<String, dynamic>.from(json);

    normalized['runtimeType'] ??= 'default';

    final scheduledAt = normalized['scheduled_at'];
    if (scheduledAt == null ||
        (scheduledAt is String && scheduledAt.trim().isEmpty)) {
      final normalizedDate = _normalizeScheduledAt(normalized);
      if (normalizedDate != null) {
        normalized['scheduled_at'] = normalizedDate;
      }
    }

    if (normalized['availability_id'] == null) {
      final availability = normalized['availability'];
      if (availability is Map<String, dynamic>) {
        final availabilityId = availability['availability_id'] ?? availability['id'];
        if (availabilityId is String && availabilityId.isNotEmpty) {
          normalized['availability_id'] = availabilityId;
        }
      }
    }

    if (normalized['psychologist_id'] == null) {
      final psychologist = normalized['psychologist'];
      if (psychologist is Map<String, dynamic>) {
        final psychologistId = psychologist['id'];
        if (psychologistId is String && psychologistId.isNotEmpty) {
          normalized['psychologist_id'] = psychologistId;
        }
      }
    }

    if (normalized['scheduled_at'] == null) {
      throw const FormatException('missingScheduledAt');
    }

    if (normalized['availability_id'] == null) {
      throw const FormatException('missingAvailabilityId');
    }

    if (normalized['psychologist_id'] == null) {
      throw const FormatException('missingPsychologistId');
    }

    return _$AppointmentFromJson(normalized);
  }
}

String? _normalizeScheduledAt(Map<String, dynamic> json) {
  final potentialSources = <dynamic>[
    json['scheduled_at'],
    json['scheduledAt'],
    json['date'],
    json['date_scheduled'],
    json['scheduled_for'],
    json['appointment_date'],
  ];

  final availability = json['availability'];
  if (availability is Map<String, dynamic>) {
    potentialSources.addAll([
      availability['scheduled_at'],
      availability['scheduledAt'],
      availability['start_at'],
      availability['startAt'],
      availability['start'],
      availability['date_availability'],
      availability['dateAvailability'],
      availability['date'],
    ]);
  }

  for (final source in potentialSources) {
    final normalized = _normalizeDate(source);
    if (normalized != null) {
      return normalized;
    }
  }

  return null;
}

String? _normalizeDate(dynamic value) {
  if (value == null) {
    return null;
  }

  if (value is DateTime) {
    return value.toIso8601String();
  }

  if (value is num) {
    return DateTime.fromMillisecondsSinceEpoch(value.toInt())
        .toIso8601String();
  }

  if (value is String) {
    if (value.trim().isEmpty) {
      return null;
    }

    final parsed = DateTime.tryParse(value);
    if (parsed != null) {
      return parsed.toIso8601String();
    }

    return value;
  }

  return null;
}

@Freezed(toJson: false)
sealed class AppointmentsPage with _$AppointmentsPage {
  const factory AppointmentsPage({
    required List<Appointment> data,
    required PaginationMeta meta,
    required PaginationLinks links,
  }) = _AppointmentsPage;

  factory AppointmentsPage.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsPageFromJson(json);
}
