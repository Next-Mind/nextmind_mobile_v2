import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
sealed class UserProfile with _$UserProfile {
  factory UserProfile({
    required int id,
    @Default('undefined') String ra,
    @Default('undefined') String course,
    @Default('undefined') String bio,
  }) = StudentProfile;

  factory UserProfile.empty() = EmptyUserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
