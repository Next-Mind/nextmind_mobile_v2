import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class AppointmentRepository {
  AsyncResult<List<Availability>> fetchAvailability(
    String psychoId,
    DateTime startDate,
    DateTime endDate,
  );

  AsyncResult<Unit> preReserve(int availabilityId);

  AsyncResult<Unit> scheduleAppointment(int availabilityId, String description);

  AsyncResult<Appointment> fetchNextAppointment();
}
