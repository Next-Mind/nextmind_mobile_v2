import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/user_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/repositories/contact_repository.dart';
import 'package:result_dart/result_dart.dart';

class ChatContactListViewmodel extends ChangeNotifier {
  ChatContactListViewmodel(this._repository);

  final ChatContactRepository _repository;

  final List<ChatSummaryModel> _contacts = <ChatSummaryModel>[];
  final List<ChatUserModel> _candidates = <ChatUserModel>[];

  bool _initialized = false;
  bool _isLoading = false;
  bool _isProcessing = false;
  bool _isCandidatesLoading = false;
  String? _errorMessage;
  String? _candidateError;
  String _searchQuery = '';

  bool get isLoading => _isLoading;
  bool get isProcessing => _isProcessing;
  bool get isCandidatesLoading => _isCandidatesLoading;
  String? get errorMessage => _errorMessage;
  String? get candidateError => _candidateError;
  String get searchQuery => _searchQuery;

  List<ChatSummaryModel> get contacts => List.unmodifiable(_contacts);
  List<ChatUserModel> get candidates => List.unmodifiable(_candidates);

  List<ChatSummaryModel> get filteredContacts {
    final query = _searchQuery.trim().toLowerCase();
    if (query.isEmpty) return contacts;

    return _contacts
        .where((summary) {
          final user = summary.contact;
          final values = <String?>[
            user.nickname,
            user.name,
            user.email,
          ];
          return values.any((value) =>
              value != null && value.toLowerCase().contains(query));
        })
        .toList(growable: false);
  }

  Future<void> init() async {
    if (_initialized) return;
    _initialized = true;
    await loadContacts();
  }

  Future<void> loadContacts() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _repository.fetchContacts();

    result.fold((data) {
      _contacts
        ..clear()
        ..addAll(data);
    }, (err) {
      _errorMessage = _mapError(err);
    });

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refresh() => loadContacts();

  void setSearchQuery(String value) {
    _searchQuery = value;
    notifyListeners();
  }

  Future<Result<ChatSummaryModel, String>> addContact(String contactId) async {
    _isProcessing = true;
    notifyListeners();

    final result = await _repository.addContact(contactId);

    return result.fold((summary) {
      final exists = _contacts.any((element) => element.contact.id == summary.contact.id);
      if (!exists) {
        _contacts.add(summary);
      }
      _candidates.removeWhere((candidate) => candidate.id == summary.contact.id);
      _isProcessing = false;
      notifyListeners();
      return Success(summary);
    }, (err) {
      _isProcessing = false;
      notifyListeners();
      return Failure(_mapError(err));
    });
  }

  Future<Result<ChatSummaryModel, String>> renameContact(
    String contactId,
    String nickname,
  ) async {
    _isProcessing = true;
    notifyListeners();

    final result = await _repository.updateContact(
      contactId,
      nickname: nickname,
    );

    return result.fold((summary) {
      final index = _contacts.indexWhere((c) => c.contact.id == contactId);
      if (index >= 0) {
        _contacts[index] = summary;
      }
      _isProcessing = false;
      notifyListeners();
      return Success(summary);
    }, (err) {
      _isProcessing = false;
      notifyListeners();
      return Failure(_mapError(err));
    });
  }

  Future<Result<Unit, String>> removeContact(String contactId) async {
    _isProcessing = true;
    notifyListeners();

    final result = await _repository.removeContact(contactId);

    return result.fold((_) {
      _contacts.removeWhere((element) => element.contact.id == contactId);
      _isProcessing = false;
      notifyListeners();
      return Success(unit);
    }, (err) {
      _isProcessing = false;
      notifyListeners();
      return Failure(_mapError(err));
    });
  }

  Future<void> loadCandidates({String? query}) async {
    _isCandidatesLoading = true;
    _candidateError = null;
    notifyListeners();

    final result = await _repository.fetchCandidates(query: query);
    result.fold((data) {
      final existingIds = _contacts.map((c) => c.contact.id).toSet();
      _candidates
        ..clear()
        ..addAll(
          data.where((candidate) => !existingIds.contains(candidate.id)),
        );
    }, (err) {
      _candidateError = _mapError(err);
    });

    _isCandidatesLoading = false;
    notifyListeners();
  }

  String _mapError(Object err) {
    if (err is DioException) {
      final message = err.response?.data;
      if (message is Map && message['message'] is String) {
        return message['message'] as String;
      }
      return err.message ?? 'An unexpected error occurred.';
    }
    if (kDebugMode) {
      return err.toString();
    }
    return 'An unexpected error occurred.';
  }
}
