import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_message_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/repositories/chat_repository.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:result_dart/result_dart.dart';

class ChatViewmodel extends ChangeNotifier {
  ChatViewmodel(
    this._repository,
    this._authRepository,
  );

  final ChatRepository _repository;
  final AuthRepository _authRepository;

  final List<ChatMessageModel> _messages = <ChatMessageModel>[];
  bool _isLoading = false;
  bool _isSending = false;
  String? _errorMessage;
  String? _conversationId;
  String? _currentUserId;

  List<ChatMessageModel> get messages => List.unmodifiable(_messages);
  bool get isLoading => _isLoading;
  bool get isSending => _isSending;
  String? get errorMessage => _errorMessage;
  String? get conversationId => _conversationId;

  Future<void> loadConversation(String contactId) async {
    _conversationId = contactId;
    await _ensureCurrentUser();

    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _repository.fetchMessages(contactId);

    result.fold((data) {
      final normalized = data
          .map(_attachSenderInfo)
          .toList()
        ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
      _messages
        ..clear()
        ..addAll(normalized);
    }, (err) {
      _errorMessage = _mapError(err);
    });

    _isLoading = false;
    notifyListeners();
  }

  Future<Result<ChatMessageModel, String>> sendText(String text) async {
    final conversation = _conversationId;
    if (conversation == null) {
      return Failure('Conversation not initialized.');
    }

    final trimmed = text.trim();
    if (trimmed.isEmpty) {
      return Failure('Empty message.');
    }

    _isSending = true;
    notifyListeners();

    final result = await _repository.sendMessage(conversation, text: trimmed);

    return result.fold((message) {
      final normalized = _attachSenderInfo(message);
      _messages
        ..add(normalized)
        ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
      _isSending = false;
      notifyListeners();
      return Success(normalized);
    }, (err) {
      _isSending = false;
      notifyListeners();
      return Failure(_mapError(err));
    });
  }

  Future<Result<ChatMessageModel, String>> sendFile(
    String filePath, {
    String? fileName,
  }) async {
    final conversation = _conversationId;
    if (conversation == null) {
      return Failure('Conversation not initialized.');
    }

    await _ensureCurrentUser();

    _isSending = true;
    final tempMessage = ChatMessageModel(
      id: 'temp_${DateTime.now().millisecondsSinceEpoch}',
      contactId: conversation,
      senderId: _currentUserId ?? '',
      content: null,
      attachmentName: fileName,
      attachmentUrl: null,
      localFilePath: filePath,
      createdAt: DateTime.now(),
      isMine: true,
      type: ChatMessageType.file,
    );
    _messages
      ..add(tempMessage)
      ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
    notifyListeners();

    final result = await _repository.sendMessage(
      conversation,
      filePath: filePath,
      fileName: fileName,
    );

    return result.fold((message) {
      _messages.removeWhere((element) => element.id == tempMessage.id);
      final normalized = _attachSenderInfo(
        message.copyWith(localFilePath: message.localFilePath ?? filePath),
      );
      _messages
        ..add(normalized)
        ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
      _isSending = false;
      notifyListeners();
      return Success(normalized);
    }, (err) {
      _messages.removeWhere((element) => element.id == tempMessage.id);
      _isSending = false;
      notifyListeners();
      return Failure(_mapError(err));
    });
  }

  void reset() {
    _messages.clear();
    _errorMessage = null;
    _conversationId = null;
    notifyListeners();
  }

  Future<void> _ensureCurrentUser() async {
    if (_currentUserId != null) return;
    final result = await _authRepository.getUser();
    result.fold((user) {
      _currentUserId = user.id;
    }, (_) {});
  }

  ChatMessageModel _attachSenderInfo(ChatMessageModel message) {
    final isMine = (_currentUserId != null && message.senderId == _currentUserId) ||
        message.isMine;
    return message.copyWith(isMine: isMine);
  }

  String _mapError(Object err) {
    if (err is DioException) {
      final data = err.response?.data;
      if (data is Map && data['message'] is String) {
        return data['message'] as String;
      }
      return err.message ?? 'An unexpected error occurred.';
    }
    if (kDebugMode) {
      return err.toString();
    }
    return 'An unexpected error occurred.';
  }
}
