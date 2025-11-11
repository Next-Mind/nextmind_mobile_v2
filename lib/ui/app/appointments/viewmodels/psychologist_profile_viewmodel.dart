import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class PsychologistProfileViewmodel extends ChangeNotifier {
  PsychologistProfileViewmodel(this._appointmentRepository);

  final AppointmentRepository _appointmentRepository;

  Psychologist? psychologist;
  final List<Availability> availabilities = [];

  late final loadProfileCommand = Command1<String, Unit>(_loadProfile);

  Future<void> refresh(String psychologistId) async {
    await loadProfileCommand.execute(psychologistId);
  }

  AsyncResult<Unit> _loadProfile(String psychologistId) {
    final now = DateTime.now();
    final end = now.add(const Duration(days: 30));
    return _appointmentRepository.fetchPsychologist(psychologistId).flatMap(
      (profile) {
        psychologist = profile;
        return _appointmentRepository
            .fetchAvailability(psychologistId, now, end)
            .map((slots) {
          availabilities
            ..clear()
            ..addAll(
              slots.where((slot) => slot.isAvailable).toList()
                ..sort((a, b) => a.startAt.compareTo(b.startAt)),
            );
          notifyListeners();
          return unit;
        });
      },
    );
  }
}
