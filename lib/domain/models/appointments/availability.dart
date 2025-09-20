import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
sealed class Availability with _$Availability {
  factory Availability({
    required String id,
    required DateTime date,
    required int status,
  }) = _BaseAvailability;

  factory Availability.empty() = EmptyAvailability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}
