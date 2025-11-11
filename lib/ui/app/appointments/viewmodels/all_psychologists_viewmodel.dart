import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/appointments/appointment_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class AllPsychologistsViewmodel extends ChangeNotifier {
  AllPsychologistsViewmodel(this._appointmentRepository) {
    fetchPsychologistsCommand.execute();
  }

  final AppointmentRepository _appointmentRepository;

  final List<Psychologist> _allPsychologists = [];
  final List<Psychologist> filteredPsychologists = [];
  String _query = '';

  late final fetchPsychologistsCommand = Command0(_fetchPsychologists);

  bool get hasResults => filteredPsychologists.isNotEmpty;

  Future<void> refresh() => fetchPsychologistsCommand.execute();

  void filter(String query) {
    _query = query;
    _applyFilter(query);
  }

  AsyncResult<Unit> _fetchPsychologists() {
    return _appointmentRepository.fetchPsychologists(page: 1).map((page) {
      _allPsychologists
        ..clear()
        ..addAll(page.data);
      _applyFilter(_query);
      return unit;
    });
  }

  void _applyFilter(String query) {
    final normalized = query.trim().toLowerCase();
    filteredPsychologists
      ..clear()
      ..addAll(
        normalized.isEmpty
            ? _allPsychologists
            : _allPsychologists.where((psychologist) {
                final name = psychologist.name.toLowerCase();
                final specialty = psychologist.specialty?.toLowerCase() ?? '';
                final specialties = psychologist.specialties
                    .map((it) => it.toLowerCase())
                    .join(' ');
                return name.contains(normalized) ||
                    specialty.contains(normalized) ||
                    specialties.contains(normalized);
              }),
      );
    notifyListeners();
  }
}
