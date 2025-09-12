import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_phone.freezed.dart';
part 'user_phone.g.dart';

@freezed
sealed class UserPhone with _$UserPhone {
  const factory UserPhone({
    required String id,
    required int countryCode,
    required int areaCode,
    required String number,
    required bool isWhatsapp,
    required bool isPrimary,
  }) = _UserPhone;

  factory UserPhone.fromJson(Map<String, dynamic> json) => _$UserPhoneFromJson(json);

}
