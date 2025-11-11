import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/data/services/appointment/appointments_service.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

class RemoteAppointmentRepository implements AppointmentRepository {
  final AppointmentsService _service;
  final AuthLocalStorage _authLocalStorage;

  RemoteAppointmentRepository(this._service, this._authLocalStorage);

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
  AsyncResult<Appointment?> fetchNextAppointment() async {
    final result = await _service.fetchScheduledAppointments(page: 1);
    return result.map((page) {
      final upcoming = page.data
          .where((appointment) => appointment.scheduledAt.isAfter(DateTime.now()))
          .toList()
        ..sort((a, b) => a.scheduledAt.compareTo(b.scheduledAt));
      return upcoming.isEmpty ? null : upcoming.first;
    });
  }

  @override
  AsyncResult<Appointment> scheduleAppointment({
    required String availabilityId,
    required String psychologistId,
    required String description,
  }) async {
    final userResult = await _authLocalStorage.getUser();
    return userResult.flatMap((user) {
      return switch (user) {
        LoggedUser(:final id) => _service.createAppointment(
            availabilityId: availabilityId,
            psychologistId: psychologistId,
            userId: id,
            description: description,
          ),
        _ => Failure(Exception('userNotLogged')),
      };
    });
  }
}
