import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class ContactRepository {
  AsyncResult<List<Contact>> fetchContacts();

  AsyncResult<Contact> getById(String id);

  AsyncResult<Unit> addContact(Contact contact);

  AsyncResult<Unit> updateContact(
    String id, {
    String? nickname,
    String? photoUrl,
  });

  AsyncResult<Unit> deleteContact(String id);

  AsyncResult<Unit> upsert(Contact contact);

  AsyncResult<Unit> clearAll();
}
