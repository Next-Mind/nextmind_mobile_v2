import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class NextAppointmentViewmodel {
  late final fetchNextAppointmentCommand = Command0(_fetchNextAppointment);
  final AppointmentRepository _appointmentRepository;

  NextAppointmentViewmodel(this._appointmentRepository) {
    fetchNextAppointmentCommand.execute();
  }

  /// True se existe próxima consulta
  bool hasNextAppointment = false;

  /// Dias até a próxima consulta:
  ///  - 0 = Hoje
  ///  - >0 = futuro
  ///  - null = sem próxima consulta
  int? daysUntil;

  AsyncResult<Unit> _fetchNextAppointment() async {
    final result = await _appointmentRepository.fetchNextAppointment();
    return result.fold((appointment) {
      if (appointment is EmptyAppointment) {
        hasNextAppointment = false;
        daysUntil = null;
        return Success(unit);
      } else if (appointment is NextAppointment) {
        hasNextAppointment = true;
        final diff = appointment.date.difference(DateTime.now());
        // Trate passado/mesmo dia como "Hoje" (0)
        daysUntil = diff.inDays <= 0 ? 0 : diff.inDays;
        return Success(unit);
      }
      return Failure(Exception('unknownAppointmentType'));
    }, (error) => Failure(error));
  }

  AsyncResult<Unit> handleNextAppointmentButton() async {
    if (hasNextAppointment) {
      // ir para detalhes/confirmar presença
      return Success(unit);
    } else {
      // ir para agendamento
      return Success(unit);
    }
  }
}
