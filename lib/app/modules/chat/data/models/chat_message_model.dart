import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum ChatMessageType { text, image, file }

@freezed
class ChatMessageModel with _$ChatMessageModel {
  const ChatMessageModel._();

  const factory ChatMessageModel({
    required String id,
    @JsonKey(name: 'contact_id') required String contactId,
    @JsonKey(name: 'sender_id') required String senderId,
    String? content,
    @JsonKey(name: 'attachment_name') String? attachmentName,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(ignore: true) String? localFilePath,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @Default(false) bool isMine,
    @JsonKey(name: 'type') @Default(ChatMessageType.text) ChatMessageType type,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageModelToJson(this);

  bool get hasAttachment => attachmentUrl != null || localFilePath != null;

  bool get isImageAttachment {
    final candidate = attachmentName ?? attachmentUrl ?? localFilePath;
    if (candidate == null) return false;
    final lower = candidate.toLowerCase();
    return lower.endsWith('.png') ||
        lower.endsWith('.jpg') ||
        lower.endsWith('.jpeg') ||
        lower.endsWith('.gif') ||
        lower.endsWith('.webp');
  }
}
