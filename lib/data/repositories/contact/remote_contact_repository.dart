import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/data/services/contact/contact_client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_dart/result_dart.dart';

class RemoteContactRepository implements ContactRepository {
  final ContactClientHttp _client;

  RemoteContactRepository(this._client);

  @override
  AsyncResult<Unit> addContact(Contact contact) {
    final response = _client.addContact(contact.id);
    return response.map((value) => unit);
  }

  @override
  AsyncResult<Unit> clearAll() => Failure<Unit>(
        UnsupportedError('Operação não suportada na API remota.'),
      ).toAsyncResult();

  @override
  AsyncResult<Unit> deleteContact(String id) =>
      _client.deleteContact(id);

  @override
  AsyncResult<List<Contact>> fetchContacts() => _client.fetchContacts();

  @override
  AsyncResult<List<Contact>> fetchContactCandidates({String? query}) =>
      _client.fetchContactCandidates(query: query);

  @override
  AsyncResult<Contact> getById(String id) {
    return fetchContacts().flatMap((list) {
      try {
        final contact = list.firstWhere((element) => element.id == id);
        return Success(contact).toAsyncResult();
      } catch (_) {
        return Failure<Contact>(
          StateError('Contato não encontrado para o id $id'),
        ).toAsyncResult();
      }
    });
  }

  @override
  AsyncResult<Unit> updateContact(
    String id, {
    String? nickname,
    String? photoUrl,
  }) {
    final response = _client.updateContact(
      id,
      nickname: nickname,
      photoUrl: photoUrl,
    );

    return response.map((_) => unit);
  }

  @override
  AsyncResult<Unit> upsert(Contact contact) => addContact(contact);
}
