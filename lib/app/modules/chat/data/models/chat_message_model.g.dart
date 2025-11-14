// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'chat_message_model.dart';

_$_ChatMessageModel _$$_ChatMessageModelFromJson(Map<String, dynamic> json) =>
    _$_ChatMessageModel(
      id: json['id'] as String,
      contactId: json['contact_id'] as String,
      senderId: json['sender_id'] as String,
      content: json['content'] as String?,
      attachmentName: json['attachment_name'] as String?,
      attachmentUrl: json['attachment_url'] as String?,
      createdAt: json['created_at'] == null
          ? DateTime.now()
          : DateTime.parse(json['created_at'] as String),
      isMine: (json['is_mine'] as bool?) ?? (json['isMine'] as bool?) ?? false,
      type: $enumDecodeNullable(_$ChatMessageTypeEnumMap, json['type']) ??
          ChatMessageType.text,
    );

Map<String, dynamic> _$$_ChatMessageModelToJson(
        _$_ChatMessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact_id': instance.contactId,
      'sender_id': instance.senderId,
      'content': instance.content,
      'attachment_name': instance.attachmentName,
      'attachment_url': instance.attachmentUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'is_mine': instance.isMine,
      'type': _$ChatMessageTypeEnumMap[instance.type]!,
    };

const _$ChatMessageTypeEnumMap = {
  ChatMessageType.text: 'text',
  ChatMessageType.image: 'image',
  ChatMessageType.file: 'file',
};
