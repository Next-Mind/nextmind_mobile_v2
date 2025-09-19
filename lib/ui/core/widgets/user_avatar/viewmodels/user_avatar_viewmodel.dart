import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class UserAvatarViewmodel extends ChangeNotifier {
  final AuthRepository _authRepository;

  final _userName = ValueNotifier<String>('');
  final _userProfileUrl = ValueNotifier<String>('');

  String get userName => _userName.value;
  String get userProfileUrl => _userProfileUrl.value;

  UserAvatarViewmodel(this._authRepository);

  late final fetchUserCommand = Command0(_fetchUser);

  AsyncResult<Unit> _fetchUser() async {
    final User? user = await _authRepository.getUser().getOrNull();
    if (user == null || user is NotLoggedUser) {
      _userName.value = 'User';
      _userProfileUrl.value = 'https://i.pravatar.cc/300';
    } else if (user is LoggedUser) {
      _userName.value = user.name;
      _userProfileUrl.value = user.photoUrl ?? 'https://i.pravatar.cc/300';
    }
    return Success(unit);
  }
}
