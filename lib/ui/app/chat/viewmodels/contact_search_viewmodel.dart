import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/data/services/contact/contact_local_storage.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ContactSearchViewmodel extends ChangeNotifier {
  final ContactLocalStorage _localStorage;
  final ContactRepository _repository;

  ContactSearchViewmodel(this._localStorage, this._repository) {
    searchCommand.execute('');
  }

  final List<Contact> results = <Contact>[];
  final TextEditingController searchController = TextEditingController();

  late final Command1<List<Contact>, String> searchCommand =
      Command1<List<Contact>, String>(_search);

  AsyncResult<List<Contact>> _search(String query) async {
    final res = await _localStorage.suggestNewContacts(query: query);
    return res.fold<AsyncResult<List<Contact>>>((list) async {
      results
        ..clear()
        ..addAll(list);
      notifyListeners();
      return Success(list);
    }, (err) async => Failure(err));
  }

  Future<void> addContact(Contact contact) async {
    final idx = results.indexWhere((c) => c.id == contact.id);
    if (idx < 0) return;

    final res = await _repository.addContact(contact);
    res.fold((_) {
      results.removeAt(idx);
      notifyListeners();
    }, (_) {});
  }
}
