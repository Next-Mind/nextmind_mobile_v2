import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_category.freezed.dart';
part 'post_category.g.dart';

@freezed
sealed class PostCategory with _$PostCategory {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostCategory({
    required String id,
    required String name,
    required String slug,
  }) = _BasePostCategory;

  factory PostCategory.fromJson(Map<String, dynamic> json) =>
      _$PostCategoryFromJson(json);
}
