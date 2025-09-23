import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/contact/contact_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/contacts/contact.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ChatViewmodel extends ChangeNotifier {
  late final fetchContactsCommand = Command0(_fetchContacts);

  final ContactRepository _contactRepository;

  ChatViewmodel(this._contactRepository);

  AsyncResult<List<Contact>> _fetchContacts() async {
    return _contactRepository.fetchContacts();
  }
}
