import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_author.freezed.dart';
part 'post_author.g.dart';

@freezed
sealed class PostAuthor with _$PostAuthor {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostAuthor({
    required String id,
    required String name,
    required String photoUrl,
  }) = _BasePostAuthor;

  factory PostAuthor.fromJson(Map<String, dynamic> json) =>
      _$PostAuthorFromJson(json);
}
