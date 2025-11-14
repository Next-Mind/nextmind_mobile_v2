import 'package:nextmind_mobile_v2/domain/models/chat/chat_summary_model.dart';
import 'package:nextmind_mobile_v2/domain/models/chat/user_model.dart';
import 'package:nextmind_mobile_v2/data/services/chat/chat_contact_service.dart';
import 'package:result_dart/result_dart.dart';

class ChatContactRepository {
  ChatContactRepository(this._service);

  final ChatContactService _service;

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
