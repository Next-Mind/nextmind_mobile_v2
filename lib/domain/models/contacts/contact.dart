import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
sealed class Contact with _$Contact {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Contact({required String id}) = _BaseContact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
