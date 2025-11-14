// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'chat_summary_model.dart';

_$_ChatSummaryModel _$$_ChatSummaryModelFromJson(Map<String, dynamic> json) =>
    _$_ChatSummaryModel(
      contact:
          ChatUserModel.fromJson(json['contact'] as Map<String, dynamic>),
      lastMessage: json['last_message'] as String?,
      lastMessageAt: json['last_message_at'] == null
          ? null
          : DateTime.parse(json['last_message_at'] as String),
      unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$_ChatSummaryModelToJson(
        _$_ChatSummaryModel instance) =>
    <String, dynamic>{
      'contact': instance.contact.toJson(),
      'last_message': instance.lastMessage,
      'last_message_at': instance.lastMessageAt?.toIso8601String(),
      'unread_count': instance.unreadCount,
    };
