import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentConfirmationViewmodel extends ChangeNotifier {
  AppointmentConfirmationViewmodel(this._appointmentRepository);

  final AppointmentRepository _appointmentRepository;

  final TextEditingController descriptionController = TextEditingController();

  late final confirmCommand = Command0(_confirmAppointment);

  String? _availabilityId;
  String? _psychologistId;

  void setup({
    required String availabilityId,
    required String psychologistId,
  }) {
    _availabilityId = availabilityId;
    _psychologistId = psychologistId;
  }

  String? validateDescription(String value) {
    if (value.trim().length < 20) {
      return 'A descrição deve conter pelo menos 20 caracteres';
    }
    return null;
  }

  bool get isFormValid =>
      _availabilityId != null &&
      _psychologistId != null &&
      validateDescription(descriptionController.text) == null;

  AsyncResult<Unit> _confirmAppointment() {
    final availabilityId = _availabilityId;
    final psychologistId = _psychologistId;
    final description = descriptionController.text.trim();

    if (availabilityId == null || psychologistId == null) {
      return Failure(Exception('missingData'));
    }

    final validation = validateDescription(description);
    if (validation != null) {
      return Failure(Exception('invalidDescription'));
    }

    return _appointmentRepository
        .scheduleAppointment(
          availabilityId: availabilityId,
          psychologistId: psychologistId,
          description: description,
        )
        .map((_) => unit);
  }

  @override
  void dispose() {
    descriptionController.dispose();
    super.dispose();
  }
}
