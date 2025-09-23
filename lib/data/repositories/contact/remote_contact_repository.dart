import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/data/services/contact/contact_client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_dart/result_dart.dart';

class RemoteContactRepository implements ContactRepository {
  final ContactClientHttp _contactClientHttp;

  RemoteContactRepository(this._contactClientHttp);

  @override
  AsyncResult<Unit> addContact() {
    throw UnimplementedError();
  }

  @override
  AsyncResult<Unit> deleteContact() {
    throw UnimplementedError();
  }

  @override
  AsyncResult<List<Contact>> fetchContacts() {
    return _contactClientHttp.fetchContacts();
  }

  @override
  AsyncResult<Unit> updateContact(String id, String name) {
    throw UnimplementedError();
  }
}
