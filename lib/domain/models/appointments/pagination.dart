import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class PaginationMeta with _$PaginationMeta {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PaginationMeta({
    @Default(1) int currentPage,
    int? from,
    @Default(1) int lastPage,
    String? path,
    @Default(0) int perPage,
    int? to,
    @Default(0) int total,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}

@freezed
class PaginationLinks with _$PaginationLinks {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PaginationLinks({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _PaginationLinks;

  factory PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);
}
