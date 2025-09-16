import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';

import 'domain/models/users/user.dart';

class MainViewmodel extends ChangeNotifier {
  final AuthRepository _authRepository;

  User _user = NotLoggedUser();
  User get user => _user;

  MainViewmodel(this._authRepository) {
    _authRepository.userObserver().listen((user) {
      _user = user;
      notifyListeners();
    });
    _authRepository.initRepository();
  }
}
