import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user_address.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user_phone.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user_profile.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  const User._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User({
    required String id,
    required String name,
    required String email,
  }) = _BaseUser;

  const factory User.notLogged() = NotLoggedUser;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User.logged({
    required String id,
    required String name,
    required String email,
    required bool emailVerified,
    String? cpf,
    String? birthDate,
    String? photoUrl,
    @Default(false) bool isNewUser,
    required String token,
    @Default(<UserPhone>[]) List<UserPhone> phones,
    @Default(<UserAddress>[]) List<UserAddress> addresses,
    UserProfile? profile,
  }) = LoggedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserX on User {
  UserProfile get profileOrEmpty {
    switch (this) {
      case LoggedUser(:final profile):
        return profile ?? UserProfile.empty();
      default:
        return UserProfile.empty();
    }
  }
}
