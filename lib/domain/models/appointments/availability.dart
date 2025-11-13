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

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}
