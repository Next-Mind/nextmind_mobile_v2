import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentsService {
  final ClientHttp _clientHttp;

  AppointmentsService(this._clientHttp);

  AsyncResult<AppointmentsPage> fetchScheduledAppointments({int page = 1}) async {
    try {
      final result = await _clientHttp
          .get('/appointments?status=scheduled&page=$page');
      return result.map((response) {
        final data = response.data as Map<String, dynamic>;
        return AppointmentsPage.fromJson(data);
      });
    } catch (error) {
      return Failure(Exception('failedToLoadAppointments'));
    }
  }

  AsyncResult<PsychologistsPage> fetchPsychologists({int page = 1}) async {
    try {
      final result = await _clientHttp.get('/psychologists/?page=$page');
      return result.map((response) {
        final data = response.data as Map<String, dynamic>;
        return PsychologistsPage.fromJson(data);
      });
    } catch (error) {
      return Failure(Exception('failedToLoadPsychologists'));
    }
  }

  AsyncResult<Psychologist> fetchPsychologist(String id) async {
    try {
      final result = await _clientHttp.get('/psychologists/$id');
      return result.map((response) {
        final data = response.data as Map<String, dynamic>;
        return Psychologist.fromJson(data);
      });
    } catch (error) {
      return Failure(Exception('failedToLoadPsychologist'));
    }
  }

  AsyncResult<List<Availability>> fetchAvailabilities({
    required String psychologistId,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    try {
      final path =
          '/psychologists/$psychologistId/availabilities?start_date=${startDate.toIso8601String()}&end_date=${endDate.toIso8601String()}';
      final result = await _clientHttp.get(path);
      return result.map((response) {
        final data = response.data as Map<String, dynamic>;
        final availabilities = data['data'] as List<dynamic>;
        return availabilities
            .map((json) => Availability.fromJson(json as Map<String, dynamic>))
            .toList();
      });
    } catch (error) {
      return Failure(Exception('failedToLoadAvailabilities'));
    }
  }

  AsyncResult<Appointment> createAppointment({
    required String availabilityId,
    required String psychologistId,
    required String userId,
    required String description,
  }) async {
    final payload = {
      'availability_id': availabilityId,
      'psychologist_id': psychologistId,
      'user_id': userId,
      'description': description,
      'status': 'scheduled',
    };

    try {
      final result = await _clientHttp.post('/appointments', payload);
      return result.map((response) {
        final data = response.data as Map<String, dynamic>;
        return Appointment.fromJson(data);
      });
    } catch (error) {
      return Failure(Exception('failedToCreateAppointment'));
    }
  }
}
