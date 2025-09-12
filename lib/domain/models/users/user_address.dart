import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_address.freezed.dart';
part 'user_address.g.dart';

@freezed
sealed class UserAddress with _$UserAddress {
  factory UserAddress({
    required String id,
    required String label,
    required String postalCode,
    required String street,
    required String complement,
    required String neighborhood,
    required String city,
    required String number,
    required String state,
    required String country,
    required bool isPrimary,
  }) = _UserAddress;

  factory UserAddress.fromJson(Map<String, dynamic> json) => _$UserAddressFromJson(json);

}