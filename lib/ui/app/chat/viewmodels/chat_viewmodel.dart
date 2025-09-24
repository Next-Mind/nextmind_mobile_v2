import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ChatViewmodel extends ChangeNotifier {
  late final fetchContactsCommand = Command0(_fetchContacts);

  final List<Contact> contacts = <Contact>[];

  final ContactRepository _contactRepository;

  ChatViewmodel(this._contactRepository) {
    fetchContactsCommand.execute();
  }

  AsyncResult<List<Contact>> _fetchContacts() async {
    final res = await _contactRepository.fetchContacts();

    return res.fold<AsyncResult<List<Contact>>>((list) async {
      contacts
        ..clear()
        ..addAll(list);
      notifyListeners();
      return Success(list);
    }, (err) async => Failure(err));
  }

  Future<void> updateContact(String id, String trim) async {
    final idx = contacts.indexWhere((c) => c.id == id);
    if (idx < 0) return;

    final previous = contacts[idx];
    final updated = previous.copyWith(nickname: trim);

    contacts[idx] = updated;
    notifyListeners();

    final res = await _contactRepository.updateContact(id, nickname: trim);

    res.fold((_) => null, (err) {
      contacts[idx] = previous;
      notifyListeners();
    });
  }

  Future<void> deleteContact(String id) async {
    final idx = contacts.indexWhere((c) => c.id == id);
    if (idx < 0) return;

    final removed = contacts[idx];

    contacts.removeAt(idx);
    notifyListeners();

    final res = await _contactRepository.deleteContact(id);

    res.fold((_) => null, (err) {
      contacts.insert(idx, removed);
      notifyListeners();
    });
  }

  Future<void> refresh() => fetchContactsCommand.execute();

  bool get isLoading =>
      fetchContactsCommand.value is RunningCommand ? true : false;

  Object? get lastError => fetchContactsCommand.value is FailureCommand<String>
      ? fetchContactsCommand.getCachedFailure()
      : null;
}
