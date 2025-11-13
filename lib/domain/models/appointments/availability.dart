import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
sealed class Availability with _$Availability {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Availability({
    required String id,
    required DateTime startAt,
    required DateTime endAt,
    @Default(false) bool isAvailable,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) {
    final normalized = Map<String, dynamic>.from(json);

    String? normalizeDate(dynamic value) {
      if (value == null) {
        return null;
      }
      if (value is DateTime) {
        return value.toIso8601String();
      }
      if (value is String) {
        final parsed = DateTime.tryParse(value);
        if (parsed != null) {
          return parsed.toIso8601String();
        }
        return value;
      }
      return value.toString();
    }

    final startSource = normalized['start_at'] ??
        normalized['startAt'] ??
        normalized['date'];
    final endSource =
        normalized['end_at'] ?? normalized['endAt'] ?? normalized['date'];

    final normalizedStart = normalizeDate(startSource);
    final normalizedEnd = normalizeDate(endSource ?? startSource);

    if (normalizedStart != null) {
      normalized['start_at'] = normalizedStart;
    }
    if (normalizedEnd != null) {
      normalized['end_at'] = normalizedEnd;
    }

    if (!normalized.containsKey('is_available')) {
      final status = normalized['status'];
      if (status is bool) {
        normalized['is_available'] = status;
      } else if (status is String) {
        normalized['is_available'] = status.toLowerCase() == 'available';
      }
    } else if (normalized['is_available'] is String) {
      final available = (normalized['is_available'] as String).toLowerCase();
      normalized['is_available'] =
          available == 'true' || available == 'available';
    }

    return _$AvailabilityFromJson(normalized);
  }
}
