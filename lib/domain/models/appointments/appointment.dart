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

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}

@freezed
sealed class AppointmentsPage with _$AppointmentsPage {
  const factory AppointmentsPage({
    required List<Appointment> data,
    required PaginationMeta meta,
    required PaginationLinks links,
  }) = _AppointmentsPage;

  factory AppointmentsPage.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsPageFromJson(json);
}
