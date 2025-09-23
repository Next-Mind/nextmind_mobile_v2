import 'package:dio/dio.dart';
import 'package:nextmind_mobile_v2/data/services/client_http.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_dart/result_dart.dart';

class ContactClientHttp {
  final ClientHttp _clientHttp;

  ContactClientHttp(this._clientHttp);

  AsyncResult<List<Contact>> fetchContacts() async {
    try {
      final response = _clientHttp.get('/contacts');
      return response.map((response) {
        final List<dynamic> postsData = response.data['data'];
        return postsData.map((postJson) => Contact.fromJson(postJson)).toList();
      });
    } on DioException catch (e) {
      return Failure(e);
    }
  }
}
