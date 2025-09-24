import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_dart/result_dart.dart';

class RemoteContactRepository implements ContactRepository {
  @override
  AsyncResult<Unit> addContact(Contact contact) {
    // TODO: implement addContact
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> clearAll() {
    // TODO: implement clearAll
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> deleteContact(String id) {
    // TODO: implement deleteContact
    throw UnimplementedError();
  }

  @override
  AsyncResult<List<Contact>> fetchContacts() {
    // TODO: implement fetchContacts
    throw UnimplementedError();
  }

  @override
  AsyncResult<Contact> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> updateContact(
    String id, {
    String? nickname,
    String? photoUrl,
  }) {
    // TODO: implement updateContact
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> upsert(Contact contact) {
    // TODO: implement upsert
    throw UnimplementedError();
  }
}
