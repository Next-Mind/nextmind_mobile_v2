import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class ContactRepository {
  AsyncResult<List<Contact>> fetchContacts();

  AsyncResult<Unit> addContact();

  AsyncResult<Unit> deleteContact();

  AsyncResult<Unit> updateContact(String id, String name);
}
