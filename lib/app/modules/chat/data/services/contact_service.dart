import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/user_model.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:result_dart/result_dart.dart';

class ContactService {
  final ClientHttp _client;

  ContactService(this._client);

  AsyncResult<List<ChatSummaryModel>> fetchContacts() {
    final response = _client.get('/contacts');
    return response.map((res) {
      final data = res.data['data'];
      if (data is! List) return <ChatSummaryModel>[];
      return data.map(_mapSummary).toList(growable: false);
    });
  }

  AsyncResult<List<ChatUserModel>> fetchCandidates({String? query}) {
    final response = _client.get(
      '/contacts/candidates',
      queryParameters: _buildQueryParameters(query),
    );

    return response.map((res) {
      final data = res.data['data'];
      if (data is! List) return <ChatUserModel>[];
      return data.map(_mapUser).toList(growable: false);
    });
  }

  AsyncResult<ChatSummaryModel> addContact(String contactId) {
    final response = _client.post(
      '/contacts',
      <String, dynamic>{'contact_id': contactId},
    );

    return response.map((res) {
      final data = res.data['data'] ?? <String, dynamic>{'id': contactId};
      return _mapSummary(data);
    });
  }

  AsyncResult<ChatSummaryModel> updateContact(
    String contactId, {
    String? nickname,
    String? photoUrl,
  }) {
    final payload = <String, dynamic>{
      if (nickname != null) 'nickname': nickname,
      if (photoUrl != null) 'photo_url': photoUrl,
    };

    final response = _client.patch('/contacts/$contactId', payload);

    return response.map((res) {
      final data = res.data['data'] ?? <String, dynamic>{'id': contactId};
      return _mapSummary(data);
    });
  }

  AsyncResult<Unit> removeContact(String contactId) {
    final response = _client.delete('/contacts/$contactId');
    return response.map((_) => unit);
  }

  Map<String, dynamic>? _buildQueryParameters(String? query) {
    final trimmed = query?.trim() ?? '';
    if (trimmed.isEmpty) return null;
    return <String, dynamic>{'search': trimmed};
  }

  ChatSummaryModel _mapSummary(dynamic raw) {
    final map = Map<String, dynamic>.from(raw as Map? ?? <String, dynamic>{});
    final contactMap = map['contact'] ?? map;
    final user = _mapUser(contactMap);

    final summaryJson = <String, dynamic>{
      'contact': user.toJson(),
      'last_message': map['last_message'],
      'last_message_at': map['last_message_at'],
      'unread_count': map['unread_count'],
    };

    return ChatSummaryModel.fromJson(summaryJson);
  }

  ChatUserModel _mapUser(dynamic raw) {
    final map = Map<String, dynamic>.from(raw as Map? ?? <String, dynamic>{});
    return ChatUserModel.fromJson(<String, dynamic>{
      'id': map['id']?.toString() ?? '',
      'name': map['name']?.toString(),
      'email': map['email']?.toString(),
      'photo_url': map['photo_url']?.toString(),
      'nickname': map['nickname']?.toString(),
    });
  }
}
