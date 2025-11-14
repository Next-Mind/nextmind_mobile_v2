// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'chat_message_model.dart';

T _$identity<T>(T value) => value;

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  String get id => throw UnimplementedError();
  @JsonKey(name: 'contact_id')
  String get contactId => throw UnimplementedError();
  @JsonKey(name: 'sender_id')
  String get senderId => throw UnimplementedError();
  String? get content => throw UnimplementedError();
  @JsonKey(name: 'attachment_name')
  String? get attachmentName => throw UnimplementedError();
  @JsonKey(name: 'attachment_url')
  String? get attachmentUrl => throw UnimplementedError();
  @JsonKey(ignore: true)
  String? get localFilePath => throw UnimplementedError();
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw UnimplementedError();
  bool get isMine => throw UnimplementedError();
  @JsonKey(name: 'type')
  ChatMessageType get type => throw UnimplementedError();

  Map<String, dynamic> toJson() => throw UnimplementedError();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw UnimplementedError();
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
    ChatMessageModel value,
    $Res Function(ChatMessageModel) then,
  ) = _$ChatMessageModelCopyWithImpl<$Res>;

  $Res call({
    String id,
    @JsonKey(name: 'contact_id') String contactId,
    @JsonKey(name: 'sender_id') String senderId,
    String? content,
    @JsonKey(name: 'attachment_name') String? attachmentName,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(ignore: true) String? localFilePath,
    @JsonKey(name: 'created_at') DateTime createdAt,
    bool isMine,
    @JsonKey(name: 'type') ChatMessageType type,
  });
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  final ChatMessageModel _value;
  final $Res Function(ChatMessageModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? contactId = freezed,
    Object? senderId = freezed,
    Object? content = freezed,
    Object? attachmentName = freezed,
    Object? attachmentUrl = freezed,
    Object? localFilePath = freezed,
    Object? createdAt = freezed,
    Object? isMine = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _value.copyWith(
        id: id == freezed ? _value.id : id as String,
        contactId: contactId == freezed
            ? _value.contactId
            : contactId as String,
        senderId: senderId == freezed
            ? _value.senderId
            : senderId as String,
        content: content == freezed ? _value.content : content as String?,
        attachmentName: attachmentName == freezed
            ? _value.attachmentName
            : attachmentName as String?,
        attachmentUrl: attachmentUrl == freezed
            ? _value.attachmentUrl
            : attachmentUrl as String?,
        localFilePath: localFilePath == freezed
            ? _value.localFilePath
            : localFilePath as String?,
        createdAt: createdAt == freezed
            ? _value.createdAt
            : createdAt as DateTime,
        isMine: isMine == freezed ? _value.isMine : isMine as bool,
        type: type == freezed ? _value.type : type as ChatMessageType,
      ),
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(
    _$_ChatMessageModel value,
    $Res Function(_$_ChatMessageModel) then,
  ) = __$$ChatMessageModelImplCopyWithImpl<$Res>;

  @override
  $Res call({
    String id,
    @JsonKey(name: 'contact_id') String contactId,
    @JsonKey(name: 'sender_id') String senderId,
    String? content,
    @JsonKey(name: 'attachment_name') String? attachmentName,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(ignore: true) String? localFilePath,
    @JsonKey(name: 'created_at') DateTime createdAt,
    bool isMine,
    @JsonKey(name: 'type') ChatMessageType type,
  });
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(
    _$_ChatMessageModel _value,
    $Res Function(_$_ChatMessageModel) _then,
  ) : super(_value, (v) => _then(v as _$_ChatMessageModel));

  @override
  _$_ChatMessageModel get _value => super._value as _$_ChatMessageModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? contactId = freezed,
    Object? senderId = freezed,
    Object? content = freezed,
    Object? attachmentName = freezed,
    Object? attachmentUrl = freezed,
    Object? localFilePath = freezed,
    Object? createdAt = freezed,
    Object? isMine = freezed,
    Object? type = freezed,
  }) {
    return _then(
      _$_ChatMessageModel(
        id: id == freezed ? _value.id : id as String,
        contactId: contactId == freezed
            ? _value.contactId
            : contactId as String,
        senderId: senderId == freezed
            ? _value.senderId
            : senderId as String,
        content: content == freezed ? _value.content : content as String?,
        attachmentName: attachmentName == freezed
            ? _value.attachmentName
            : attachmentName as String?,
        attachmentUrl: attachmentUrl == freezed
            ? _value.attachmentUrl
            : attachmentUrl as String?,
        localFilePath: localFilePath == freezed
            ? _value.localFilePath
            : localFilePath as String?,
        createdAt: createdAt == freezed
            ? _value.createdAt
            : createdAt as DateTime,
        isMine: isMine == freezed ? _value.isMine : isMine as bool,
        type: type == freezed ? _value.type : type as ChatMessageType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessageModel extends _ChatMessageModel {
  const _$_ChatMessageModel({
    required this.id,
    @JsonKey(name: 'contact_id') required this.contactId,
    @JsonKey(name: 'sender_id') required this.senderId,
    this.content,
    @JsonKey(name: 'attachment_name') this.attachmentName,
    @JsonKey(name: 'attachment_url') this.attachmentUrl,
    @JsonKey(ignore: true) this.localFilePath,
    @JsonKey(name: 'created_at') required this.createdAt,
    this.isMine = false,
    @JsonKey(name: 'type') this.type = ChatMessageType.text,
  }) : super._();

  factory _$_ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessageModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'contact_id')
  final String contactId;
  @override
  @JsonKey(name: 'sender_id')
  final String senderId;
  @override
  final String? content;
  @override
  @JsonKey(name: 'attachment_name')
  final String? attachmentName;
  @override
  @JsonKey(name: 'attachment_url')
  final String? attachmentUrl;
  @override
  @JsonKey(ignore: true)
  final String? localFilePath;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isMine;
  @override
  @JsonKey(name: 'type')
  final ChatMessageType type;

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, contactId: $contactId, senderId: $senderId, content: $content, attachmentName: $attachmentName, attachmentUrl: $attachmentUrl, localFilePath: $localFilePath, createdAt: $createdAt, isMine: $isMine, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessageModel &&
            other.id == id &&
            other.contactId == contactId &&
            other.senderId == senderId &&
            other.content == content &&
            other.attachmentName == attachmentName &&
            other.attachmentUrl == attachmentUrl &&
            other.localFilePath == localFilePath &&
            other.createdAt == createdAt &&
            other.isMine == isMine &&
            other.type == type);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        id,
        contactId,
        senderId,
        content,
        attachmentName,
        attachmentUrl,
        localFilePath,
        createdAt,
        isMine,
        type,
      );

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$ChatMessageModelImplCopyWith<_$_ChatMessageModel> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$_ChatMessageModel>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessageModelToJson(this);
  }
}

abstract class _ChatMessageModel extends ChatMessageModel {
  const factory _ChatMessageModel({
    required String id,
    @JsonKey(name: 'contact_id') required String contactId,
    @JsonKey(name: 'sender_id') required String senderId,
    String? content,
    @JsonKey(name: 'attachment_name') String? attachmentName,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    @JsonKey(ignore: true) String? localFilePath,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    bool isMine,
    @JsonKey(name: 'type') ChatMessageType type,
  }) = _$_ChatMessageModel;
  const _ChatMessageModel._() : super._();

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$_ChatMessageModel.fromJson;
}
