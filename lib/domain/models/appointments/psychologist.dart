import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextmind_mobile_v2/domain/models/appointments/pagination.dart';

part 'psychologist.freezed.dart';
part 'psychologist.g.dart';

@freezed
class Psychologist with _$Psychologist {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Psychologist({
    required String id,
    required String name,
    String? crp,
    String? specialty,
    @Default(<String>[]) List<String> specialties,
    String? bio,
    String? photoUrl,
  }) = _Psychologist;

  factory Psychologist.fromJson(Map<String, dynamic> json) =>
      _$PsychologistFromJson(json);
}

@freezed
class PsychologistsPage with _$PsychologistsPage {
  const factory PsychologistsPage({
    required List<Psychologist> data,
    required PaginationMeta meta,
    required PaginationLinks links,
  }) = _PsychologistsPage;

  factory PsychologistsPage.fromJson(Map<String, dynamic> json) =>
      _$PsychologistsPageFromJson(json);
}
