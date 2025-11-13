import 'package:logger/logger.dart';
import 'package:nextmind_mobile_v2/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/appointment.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/availability.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/psychologist.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_dart/result_dart.dart';

class AppointmentsService {
  final ClientHttp _clientHttp;
  final AuthLocalStorage _authLocalStorage;
  Logger _logger;

  AppointmentsService(this._clientHttp, this._authLocalStorage, this._logger);

  AsyncResult<AppointmentsPage> fetchScheduledAppointments({
    int page = 1,
  }) async {
    try {
      final result = await _clientHttp.get(
        '/appointments?status=scheduled&page=$page',
      );
      return result
          .map((response) {
            final data = response.data as Map<String, dynamic>;
            _logger.d(
              "DEU CERTO' PRA PEGAR OS AGENDAMENTO: ${data.toString()}",
            );

            final normalized = Map<String, dynamic>.from(data);
            final rawAppointments =
                (normalized['data'] as List<dynamic>? ?? const <dynamic>[]);

            normalized['data'] = rawAppointments
                .whereType<Map<String, dynamic>>()
                .map(_normalizeAppointmentJson)
                .toList();

            return AppointmentsPage.fromJson(normalized);
          })
          .mapError((error) {
            _logger.w(error.toString());
            return Exception('error');
          });
    } catch (error) {
      _logger.w("DEU ERRO PRA PEGAR OS AGENDAMENTO: ${error.toString()}");
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
        final psychologist = data['data'];
        if (psychologist is! Map<String, dynamic>) {
          throw const FormatException('invalidPsychologistResponse');
        }
        return Psychologist.fromJson(psychologist);
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
        final availabilities =
            (data['data'] as List<dynamic>? ?? const <dynamic>[]);
        return availabilities
            .whereType<Map<String, dynamic>>()
            .map(_normalizeAvailabilityJson)
            .map(Availability.fromJson)
            .toList();
      });
    } catch (error) {
      return Failure(Exception('failedToLoadAvailabilities'));
    }
  }

  AsyncResult<Appointment> createAppointment({
    required String availabilityId,
    required String psychologistId,
    required String description,
  }) async {
    final user = await _authLocalStorage.getUser().getOrThrow() as LoggedUser;
    final userId = user.id;

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
        final appointment = data['data'];
        if (appointment is! Map<String, dynamic>) {
          throw const FormatException('invalidAppointmentResponse');
        }
        return Appointment.fromJson(_normalizeAppointmentJson(appointment));
      });
    } catch (error) {
      return Failure(Exception('failedToCreateAppointment'));
    }
  }
}

Map<String, dynamic> _normalizeAppointmentJson(Map<String, dynamic> json) {
  final normalized = Map<String, dynamic>.from(json);

  normalized['runtimeType'] ??= 'default';

  final availability = normalized['availability'];
  final scheduledAt = _selectIsoString([
    normalized['scheduled_at'],
    normalized['scheduledAt'],
    normalized['date'],
    normalized['date_scheduled'],
    normalized['scheduled_for'],
    normalized['appointment_date'],
    if (availability is Map<String, dynamic>) ...[
      availability['scheduled_at'],
      availability['scheduledAt'],
      availability['date_availability'],
      availability['dateAvailability'],
      availability['start_at'],
      availability['startAt'],
      availability['start'],
      availability['date'],
    ],
  ]);

  if (scheduledAt != null) {
    normalized['scheduled_at'] = scheduledAt;
  }

  if (normalized['availability_id'] == null &&
      availability is Map<String, dynamic>) {
    final availabilityId =
        availability['availability_id'] ?? availability['id'];
    if (availabilityId is String && availabilityId.isNotEmpty) {
      normalized['availability_id'] = availabilityId;
    }
  }

  if (normalized['psychologist_id'] == null) {
    final psychologist = normalized['psychologist'];
    if (psychologist is Map<String, dynamic>) {
      final psychologistId = psychologist['id'];
      if (psychologistId is String && psychologistId.isNotEmpty) {
        normalized['psychologist_id'] = psychologistId;
      }
    }
  }

  return normalized;
}

Map<String, dynamic> _normalizeAvailabilityJson(Map<String, dynamic> json) {
  final normalized = Map<String, dynamic>.from(json);

  final startAt = _selectIsoString([
    normalized['start_at'],
    normalized['startAt'],
    normalized['date_availability'],
    normalized['dateAvailability'],
    normalized['start'],
    normalized['date'],
  ]);

  final endAt = _selectIsoString([
        normalized['end_at'],
        normalized['endAt'],
        normalized['end'],
        normalized['finish'],
        normalized['date_availability'],
        normalized['dateAvailability'],
        normalized['date'],
      ]) ??
      startAt;

  if (startAt != null) {
    normalized['start_at'] = startAt;
  }
  if (endAt != null) {
    normalized['end_at'] = endAt;
  }

  if (!normalized.containsKey('is_available')) {
    final status = _parseAvailabilityStatus(normalized['status']);
    if (status != null) {
      normalized['is_available'] = status;
    }
  } else if (normalized['is_available'] is String) {
    final status = _parseAvailabilityStatus(normalized['is_available']);
    if (status != null) {
      normalized['is_available'] = status;
    } else {
      normalized.remove('is_available');
    }
  }

  return normalized;
}

String? _selectIsoString(Iterable<dynamic> sources) {
  for (final source in sources) {
    final isoString = _toIsoString(source);
    if (isoString != null) {
      return isoString;
    }
  }
  return null;
}

String? _toIsoString(dynamic value) {
  final parsed = _parseDateTimeValue(value);
  if (parsed != null) {
    return parsed.toIso8601String();
  }

  if (value is String) {
    final trimmed = value.trim();
    if (trimmed.isNotEmpty) {
      return trimmed;
    }
  }

  return null;
}

DateTime? _parseDateTimeValue(dynamic value) {
  if (value == null) {
    return null;
  }

  if (value is DateTime) {
    return value;
  }

  if (value is num) {
    return DateTime.fromMillisecondsSinceEpoch(value.toInt());
  }

  if (value is String) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      return null;
    }

    final normalized = trimmed.contains('T')
        ? trimmed
        : trimmed.replaceFirst(' ', 'T');
    return DateTime.tryParse(normalized);
  }

  return null;
}

bool? _parseAvailabilityStatus(dynamic value) {
  if (value is bool) {
    return value;
  }

  if (value is String) {
    final normalized = value.trim().toLowerCase();
    if (normalized.isEmpty) {
      return null;
    }

    if (normalized == 'available' ||
        normalized == 'true' ||
        normalized == 'open') {
      return true;
    }

    if (normalized == 'reserved' ||
        normalized == 'false' ||
        normalized == 'unavailable' ||
        normalized == 'closed') {
      return false;
    }
  }

  return null;
}
