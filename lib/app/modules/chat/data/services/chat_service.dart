import 'package:dio/dio.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_message_model.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:result_dart/result_dart.dart';

class ChatService {
  ChatService(this._client);

  final ClientHttp _client;

  AsyncResult<List<ChatMessageModel>> fetchMessages(String contactId) {
    final response = _client.get('/contacts/$contactId/messages');
    return response.map((res) {
      final data = res.data['data'];
      if (data is! List) return <ChatMessageModel>[];
      return data.map(_mapMessage).toList(growable: false);
    });
  }

  Future<Result<ChatMessageModel, DioException>> sendMessage(
    String contactId, {
    String? text,
    String? filePath,
    String? fileName,
  }) async {
    final payload = <String, dynamic>{};

    if (text != null && text.trim().isNotEmpty) {
      payload['content'] = text.trim();
    }

    if (filePath != null) {
      payload['attachment'] = await MultipartFile.fromFile(
        filePath,
        filename: fileName,
      );
    }

    final body = payload.values.any((value) => value is MultipartFile)
        ? FormData.fromMap(payload)
        : payload;

    final response = await _client.post('/contacts/$contactId/messages', body);
    return response.map((res) {
      final data = res.data['data'] ?? <String, dynamic>{};
      final message = _mapMessage(data);
      if (filePath != null && message.attachmentUrl == null) {
        return message.copyWith(localFilePath: filePath);
      }
      return message;
    });
  }

  AsyncResult<Unit> deleteMessage(String messageId) {
    final response = _client.delete('/messages/$messageId');
    return response.map((_) => unit);
  }

  ChatMessageModel _mapMessage(dynamic raw) {
    final map = Map<String, dynamic>.from(raw as Map? ?? <String, dynamic>{});
    final createdAt = _parseDate(map['created_at']);

    final json = <String, dynamic>{
      'id': map['id']?.toString() ?? '',
      'contact_id': map['contact_id']?.toString() ??
          map['receiver_id']?.toString() ??
          '',
      'sender_id': map['sender_id']?.toString() ?? '',
      'content': map['content'],
      'attachment_name': map['attachment_name'] ?? map['file_name'],
      'attachment_url': map['attachment_url'] ?? map['file_url'],
      'created_at': (createdAt ?? DateTime.now()).toIso8601String(),
      'is_mine': map['is_mine'] ?? map['isMine'] ?? false,
      'type': map['type'],
    };

    return ChatMessageModel.fromJson(json);
  }

  DateTime? _parseDate(dynamic value) {
    if (value is DateTime) return value;
    if (value is String && value.isNotEmpty) {
      return DateTime.tryParse(value);
    }
    return null;
  }
}
