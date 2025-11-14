// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'chat_summary_model.dart';

T _$identity<T>(T value) => value;

ChatSummaryModel _$ChatSummaryModelFromJson(Map<String, dynamic> json) {
  return _ChatSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$ChatSummaryModel {
  ChatUserModel get contact => throw UnimplementedError();
  String? get lastMessage => throw UnimplementedError();
  @JsonKey(name: 'last_message_at')
  DateTime? get lastMessageAt => throw UnimplementedError();
  @JsonKey(name: 'unread_count')
  int get unreadCount => throw UnimplementedError();

  Map<String, dynamic> toJson() => throw UnimplementedError();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatSummaryModelCopyWith<ChatSummaryModel> get copyWith =>
      throw UnimplementedError();
}

/// @nodoc
abstract class $ChatSummaryModelCopyWith<$Res> {
  factory $ChatSummaryModelCopyWith(
    ChatSummaryModel value,
    $Res Function(ChatSummaryModel) then,
  ) = _$ChatSummaryModelCopyWithImpl<$Res>;

  $Res call({
    ChatUserModel contact,
    String? lastMessage,
    @JsonKey(name: 'last_message_at') DateTime? lastMessageAt,
    @JsonKey(name: 'unread_count') int unreadCount,
  });

  $ChatUserModelCopyWith<$Res> get contact;
}

/// @nodoc
class _$ChatSummaryModelCopyWithImpl<$Res>
    implements $ChatSummaryModelCopyWith<$Res> {
  _$ChatSummaryModelCopyWithImpl(this._value, this._then);

  final ChatSummaryModel _value;
  final $Res Function(ChatSummaryModel) _then;

  @override
  $Res call({
    Object? contact = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageAt = freezed,
    Object? unreadCount = freezed,
  }) {
    return _then(
      _value.copyWith(
        contact: contact == freezed
            ? _value.contact
            : contact as ChatUserModel,
        lastMessage:
            lastMessage == freezed ? _value.lastMessage : lastMessage as String?,
        lastMessageAt: lastMessageAt == freezed
            ? _value.lastMessageAt
            : lastMessageAt as DateTime?,
        unreadCount: unreadCount == freezed
            ? _value.unreadCount
            : unreadCount as int,
      ),
    );
  }

  @override
  $ChatUserModelCopyWith<$Res> get contact {
    return $ChatUserModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value));
    });
  }
}

/// @nodoc
abstract class _$$ChatSummaryModelImplCopyWith<$Res>
    implements $ChatSummaryModelCopyWith<$Res> {
  factory _$$ChatSummaryModelImplCopyWith(
    _$_ChatSummaryModel value,
    $Res Function(_$_ChatSummaryModel) then,
  ) = __$$ChatSummaryModelImplCopyWithImpl<$Res>;

  @override
  $Res call({
    ChatUserModel contact,
    String? lastMessage,
    @JsonKey(name: 'last_message_at') DateTime? lastMessageAt,
    @JsonKey(name: 'unread_count') int unreadCount,
  });

  @override
  $ChatUserModelCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ChatSummaryModelImplCopyWithImpl<$Res>
    extends _$ChatSummaryModelCopyWithImpl<$Res>
    implements _$$ChatSummaryModelImplCopyWith<$Res> {
  __$$ChatSummaryModelImplCopyWithImpl(
    _$_ChatSummaryModel _value,
    $Res Function(_$_ChatSummaryModel) _then,
  ) : super(_value, (v) => _then(v as _$_ChatSummaryModel));

  @override
  _$_ChatSummaryModel get _value => super._value as _$_ChatSummaryModel;

  @override
  $Res call({
    Object? contact = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageAt = freezed,
    Object? unreadCount = freezed,
  }) {
    return _then(
      _$_ChatSummaryModel(
        contact: contact == freezed
            ? _value.contact
            : contact as ChatUserModel,
        lastMessage:
            lastMessage == freezed ? _value.lastMessage : lastMessage as String?,
        lastMessageAt: lastMessageAt == freezed
            ? _value.lastMessageAt
            : lastMessageAt as DateTime?,
        unreadCount: unreadCount == freezed
            ? _value.unreadCount
            : unreadCount as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatSummaryModel extends _ChatSummaryModel {
  const _$_ChatSummaryModel({
    required this.contact,
    this.lastMessage,
    @JsonKey(name: 'last_message_at') this.lastMessageAt,
    @JsonKey(name: 'unread_count') this.unreadCount = 0,
  }) : super._();

  factory _$_ChatSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatSummaryModelFromJson(json);

  @override
  final ChatUserModel contact;
  @override
  final String? lastMessage;
  @override
  @JsonKey(name: 'last_message_at')
  final DateTime? lastMessageAt;
  @override
  @JsonKey(name: 'unread_count')
  final int unreadCount;

  @override
  String toString() {
    return 'ChatSummaryModel(contact: $contact, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatSummaryModel &&
            other.contact == contact &&
            other.lastMessage == lastMessage &&
            other.lastMessageAt == lastMessageAt &&
            other.unreadCount == unreadCount);
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, contact, lastMessage, lastMessageAt, unreadCount);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$ChatSummaryModelImplCopyWith<_$_ChatSummaryModel> get copyWith =>
      __$$ChatSummaryModelImplCopyWithImpl<_$_ChatSummaryModel>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatSummaryModelToJson(this);
  }
}

abstract class _ChatSummaryModel extends ChatSummaryModel {
  const factory _ChatSummaryModel({
    required ChatUserModel contact,
    String? lastMessage,
    @JsonKey(name: 'last_message_at') DateTime? lastMessageAt,
    @JsonKey(name: 'unread_count') int unreadCount,
  }) = _$_ChatSummaryModel;
  const _ChatSummaryModel._() : super._();

  factory _ChatSummaryModel.fromJson(Map<String, dynamic> json) =
      _$_ChatSummaryModel.fromJson;
}
