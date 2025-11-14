import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/data/services/contact/contact_local_storage.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:nextmind_mobile_v2/utils/exceptions/local_storage_exception.dart';
import 'package:result_dart/result_dart.dart';

class ContactRepositoryLocal implements ContactRepository {
  final ContactLocalStorage _storage;

  ContactRepositoryLocal(this._storage);

  @override
  AsyncResult<List<Contact>> fetchContacts() => _storage.fetchContacts();

  @override
  AsyncResult<List<Contact>> fetchContactCandidates({String? query}) =>
      _storage.suggestNewContacts(query: query);

  @override
  AsyncResult<Contact> getById(String id) => _storage.getById(id);

  @override
  AsyncResult<Unit> addContact(Contact contact) => _storage.add(contact);

  @override
  AsyncResult<Unit> upsert(Contact contact) => _storage.upsert(contact);

  @override
  AsyncResult<Unit> deleteContact(String id) => _storage.removeById(id);

  @override
  AsyncResult<Unit> clearAll() => _storage.clear();

  @override
  AsyncResult<Unit> updateContact(
    String id, {
    String? nickname,
    String? photoUrl,
  }) async {
    final listRes = await _storage.fetchContacts();
    return listRes.fold<AsyncResult<Unit>>((list) async {
      final idx = list.indexWhere((c) => c.id == id);
      if (idx < 0) {
        return Failure(LocalStorageException('Contato não encontrado.'));
      }

      final old = list[idx];
      final updated = old.copyWith(
        nickname: nickname ?? old.nickname,
        photoUrl: photoUrl ?? old.photoUrl,
      );

      return _storage.update(updated);
    }, (err) async => Failure(err));
  }
}
