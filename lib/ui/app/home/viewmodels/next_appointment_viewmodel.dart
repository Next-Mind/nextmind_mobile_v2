import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class NextAppointmentViewmodel {
  late final fetchNextAppointmentCommand = Command0(_fetchNextAppointment);
  final AppointmentRepository _appointmentRepository;

  Appointment nextAppointment = EmptyAppointment();
  int? daysUntil;

  NextAppointmentViewmodel(this._appointmentRepository) {
    fetchNextAppointmentCommand.execute();
  }

  bool get hasNextAppointment => nextAppointment is! EmptyAppointment;

  AsyncResult<Unit> _fetchNextAppointment() async {
    final result = await _appointmentRepository.fetchNextAppointment();
    return result.fold((appointment) {
      nextAppointment = appointment as BaseAppointment;
      final diff = appointment.scheduledAt.difference(DateTime.now());
      daysUntil = diff.inDays <= 0 ? 0 : diff.inDays;
      return Success(unit);
    }, (error) => Failure(error));
  }

  AsyncResult<Unit> handleNextAppointmentButton() async {
    return Success(unit);
  }
}
