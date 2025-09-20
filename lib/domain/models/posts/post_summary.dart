import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nextmind_mobile_v2/domain/models/posts/post_author.dart';
import 'package:nextmind_mobile_v2/domain/models/posts/post_category.dart';

part 'post_summary.freezed.dart';
part 'post_summary.g.dart';

@freezed
sealed class PostSummary with _$PostSummary {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostSummary({
    required String id,
    required String title,
    required String imageUrl,
    required PostCategory category,
    required PostAuthor author,
  }) = _BasePostSummary;

  factory PostSummary.fromJson(Map<String, dynamic> json) =>
      _$PostSummaryFromJson(json);
}
