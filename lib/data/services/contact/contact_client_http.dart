import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_dart/result_dart.dart';

class ContactClientHttp {
  final ClientHttp _clientHttp;

  ContactClientHttp(this._clientHttp);

  AsyncResult<List<Contact>> fetchContacts() async {
    final response = _clientHttp.get('/contacts');
    return response.map((response) {
      final data = response.data['data'];
      if (data is! List) return <Contact>[];

      return data
          .map((raw) => Contact.fromJson(_normalizeContactPayload(raw)))
          .toList();
    });
  }

  AsyncResult<List<Contact>> fetchContactCandidates({String? query}) {
    final response = _clientHttp.get(
      '/contacts/candidates',
      queryParameters: _buildQueryParameters(query),
    );

    return response.map((response) {
      final List<dynamic> contactsData =
          (response.data['data'] as List<dynamic>? ?? <dynamic>[]);

      return contactsData
          .map((raw) => Contact.fromJson(_normalizeContactPayload(raw)))
          .toList(growable: false);
    });
  }

  Map<String, dynamic>? _buildQueryParameters(String? query) {
    final trimmed = query?.trim() ?? '';
    if (trimmed.isEmpty) return null;

    return <String, dynamic>{'search': trimmed};
  }

  AsyncResult<Contact> addContact(String contactId) {
    final response = _clientHttp.post(
      '/contacts',
      <String, dynamic>{'contact_id': contactId},
    );

    return response.map((response) {
      final data = response.data['data'];
      return Contact.fromJson(_normalizeContactPayload(data ?? {'id': contactId}));
    });
  }

  AsyncResult<Contact> updateContact(
    String id, {
    String? nickname,
    String? photoUrl,
  }) {
    final payload = <String, dynamic>{
      if (nickname != null) 'nickname': nickname,
      if (photoUrl != null) 'photo_url': photoUrl,
    };

    final response = _clientHttp.patch('/contacts/$id', payload);

    return response.map((response) {
      final data = response.data['data'] ?? <String, dynamic>{'id': id};
      return Contact.fromJson(_normalizeContactPayload(data));
    });
  }

  AsyncResult<Unit> deleteContact(String id) {
    final response = _clientHttp.delete('/contacts/$id');
    return response.map((_) => unit);
  }

  Map<String, dynamic> _normalizeContactPayload(dynamic raw) {
    if (raw is Contact) return raw.toJson();
    final map = Map<String, dynamic>.from(raw as Map? ?? <String, dynamic>{});

    final contactData = map['contact'];
    if (contactData is Map) {
      map
        ..addAll(contactData)
        ..remove('contact');
    }

    final nickname = map['nickname'] ?? map['name'] ?? '';

    return <String, dynamic>{
      'id': map['id']?.toString() ?? '',
      'nickname': nickname?.toString() ?? '',
      'photo_url': map['photo_url']?.toString() ?? '',
    };
  }
}
