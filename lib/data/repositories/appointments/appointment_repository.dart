import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class AppointmentRepository {
  AsyncResult<AppointmentsPage> fetchScheduledAppointments({int page = 1});

  AsyncResult<PsychologistsPage> fetchPsychologists({int page = 1});

  AsyncResult<Psychologist> fetchPsychologist(String id);

  AsyncResult<List<Availability>> fetchAvailability(
    String psychologistId,
    DateTime startDate,
    DateTime endDate,
  );

  AsyncResult<Appointment> scheduleAppointment({
    required String availabilityId,
    required String psychologistId,
    required String description,
  });

  AsyncResult<Appointment?> fetchNextAppointment();
}
