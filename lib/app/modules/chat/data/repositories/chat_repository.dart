import 'package:dio/dio.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_message_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/services/chat_service.dart';
import 'package:result_dart/result_dart.dart';

class ChatRepository {
  ChatRepository(this._service);

  final ChatService _service;

  AsyncResult<List<ChatMessageModel>> fetchMessages(String contactId) =>
      _service.fetchMessages(contactId);

  Future<Result<ChatMessageModel, DioException>> sendMessage(
    String contactId, {
    String? text,
    String? filePath,
    String? fileName,
  }) =>
      _service.sendMessage(
        contactId,
        text: text,
        filePath: filePath,
        fileName: fileName,
      );

  AsyncResult<Unit> deleteMessage(String messageId) =>
      _service.deleteMessage(messageId);
}
