import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user_address.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user_phone.dart';
import 'package:nextmind_mobile_v2/domain/models/users/user_profile.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
   @FreezedUnionValue('authenticated')
  const factory User({
    required String id,
    required String name,
    required String email,
  }) = _BaseUser;

  factory User.notLogged() = NotLoggedUser;

  const factory User.logged({
    required String id,
    required String name,
    required String email,
    required String token,
    required List<UserPhone>? phones,
    required List<UserAddress>? addresses,
    required UserProfile profile


  }) = LoggedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}
