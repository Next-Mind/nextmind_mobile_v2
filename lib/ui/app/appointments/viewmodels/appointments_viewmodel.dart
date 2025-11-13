import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentsViewmodel extends ChangeNotifier {
  AppointmentsViewmodel(this._appointmentRepository) {
    fetchDataCommand.execute();
  }

  final AppointmentRepository _appointmentRepository;

  final List<BaseAppointment> scheduledAppointments = [];
  final List<Psychologist> featuredPsychologists = [];

  late final fetchDataCommand = Command0(_fetchData);

  bool get hasScheduledAppointments => scheduledAppointments.isNotEmpty;

  Future<void> refresh() async {
    await fetchDataCommand.execute();
  }

  AsyncResult<Unit> _fetchData() {
    return _appointmentRepository.fetchScheduledAppointments(page: 1).flatMap((
      appointmentsPage,
    ) {
      scheduledAppointments
        ..clear()
        ..addAll(appointmentsPage.data.cast());
      return _appointmentRepository.fetchPsychologists(page: 1).map((
        psychologistsPage,
      ) {
        featuredPsychologists
          ..clear()
          ..addAll(psychologistsPage.data.take(10));
        return unit;
      });
    });
  }
}
