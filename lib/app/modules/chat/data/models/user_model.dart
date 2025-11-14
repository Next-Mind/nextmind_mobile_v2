import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class ChatUserModel with _$ChatUserModel {
  const ChatUserModel._();

  const factory ChatUserModel({
    required String id,
    String? name,
    String? email,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? nickname,
  }) = _ChatUserModel;

  factory ChatUserModel.fromJson(Map<String, dynamic> json) =>
      _$ChatUserModelFromJson(json);

  String get displayName {
    final values = <String?>[nickname, name, email];
    for (final value in values) {
      if (value == null) continue;
      final trimmed = value.trim();
      if (trimmed.isNotEmpty) {
        return trimmed;
      }
    }
    return '';
  }
}
