import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/data/services/appointment/appointment_local_storage.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:result_dart/result_dart.dart';

class LocalAppointmentRepository implements AppointmentRepository {
  final AppointmentLocalStorage _localStorage;

  LocalAppointmentRepository(this._localStorage);

  @override
  AsyncResult<List<Availability>> fetchAvailability(
    String psychoId,
    DateTime startDate,
    DateTime endDate,
  ) async {
    return _localStorage.fetchLocalAvailabilities();
  }

  @override
  AsyncResult<Appointment> fetchNextAppointment() async {
    return _localStorage.fetchNextAppointment();
  }

  @override
  AsyncResult<Unit> preReserve(int availabilityId) {
    // TODO: implement preReserve
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> scheduleAppointment(
    int availabilityId,
    String description,
  ) {
    // TODO: implement scheduleAppointment
    throw UnimplementedError();
  }
}
