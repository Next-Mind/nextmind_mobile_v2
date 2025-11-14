import 'package:nextmind_mobile_v2/app/modules/chat/data/models/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/models/user_model.dart';
import 'package:nextmind_mobile_v2/app/modules/chat/data/services/contact_service.dart';
import 'package:result_dart/result_dart.dart';

class ChatContactRepository {
  ChatContactRepository(this._service);

  final ContactService _service;

  AsyncResult<List<ChatSummaryModel>> fetchContacts() =>
      _service.fetchContacts();

  AsyncResult<List<ChatUserModel>> fetchCandidates({String? query}) =>
      _service.fetchCandidates(query: query);

  AsyncResult<ChatSummaryModel> addContact(String contactId) =>
      _service.addContact(contactId);

  AsyncResult<ChatSummaryModel> updateContact(
    String contactId, {
    String? nickname,
    String? photoUrl,
  }) =>
      _service.updateContact(
        contactId,
        nickname: nickname,
        photoUrl: photoUrl,
      );

  AsyncResult<Unit> removeContact(String contactId) =>
      _service.removeContact(contactId);
}
