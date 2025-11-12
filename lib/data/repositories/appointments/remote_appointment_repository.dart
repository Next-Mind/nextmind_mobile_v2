import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/data/services/appointment/appointments_service.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:result_dart/result_dart.dart';

class RemoteAppointmentRepository implements AppointmentRepository {
  final AppointmentsService _service;

  RemoteAppointmentRepository(this._service);

  @override
  AsyncResult<AppointmentsPage> fetchScheduledAppointments({int page = 1}) {
    return _service.fetchScheduledAppointments(page: page);
  }

  @override
  AsyncResult<PsychologistsPage> fetchPsychologists({int page = 1}) {
    return _service.fetchPsychologists(page: page);
  }

  @override
  AsyncResult<Psychologist> fetchPsychologist(String id) {
    return _service.fetchPsychologist(id);
  }

  @override
  AsyncResult<List<Availability>> fetchAvailability(
    String psychologistId,
    DateTime startDate,
    DateTime endDate,
  ) {
    return _service.fetchAvailabilities(
      psychologistId: psychologistId,
      startDate: startDate,
      endDate: endDate,
    );
  }

  @override
  AsyncResult<Appointment> fetchNextAppointment() async {
    final result = await _service.fetchScheduledAppointments(page: 1);

    return result.map((page) {
      final upcoming =
          page.data
              .where(
                (appointment) =>
                    appointment is BaseAppointment &&
                    appointment.scheduledAt.isAfter(DateTime.now()),
              )
              .cast<BaseAppointment>()
              .toList()
            ..sort((a, b) => a.scheduledAt.compareTo(b.scheduledAt));

      return upcoming.isEmpty ? const Appointment.empty() : upcoming.first;
    });
  }

  @override
  AsyncResult<Appointment> scheduleAppointment({
    required String availabilityId,
    required String psychologistId,
    required String description,
  }) async {
    return _service.createAppointment(
      availabilityId: availabilityId,
      psychologistId: psychologistId,
      description: description,
    );
  }
}
