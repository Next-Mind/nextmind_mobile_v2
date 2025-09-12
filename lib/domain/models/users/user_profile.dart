import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
sealed class UserProfile with _$UserProfile{
  factory UserProfile({
    required int id,
    @Default('ra') String ra,
    @Default('curso') String course,
    @Default('bio') String bio
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String,dynamic> json) => _$UserProfileFromJson(json);


} 