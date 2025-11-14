import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart';

part 'chat_summary_model.freezed.dart';
part 'chat_summary_model.g.dart';

@freezed
class ChatSummaryModel with _$ChatSummaryModel {
  const ChatSummaryModel._();

  const factory ChatSummaryModel({
    required ChatUserModel contact,
    String? lastMessage,
    @JsonKey(name: 'last_message_at') DateTime? lastMessageAt,
    @JsonKey(name: 'unread_count') @Default(0) int unreadCount,
  }) = _ChatSummaryModel;

  factory ChatSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ChatSummaryModelFromJson(json);

  String get subtitle =>
      (lastMessage ?? '').trim().isNotEmpty ? lastMessage!.trim() : '';
}
