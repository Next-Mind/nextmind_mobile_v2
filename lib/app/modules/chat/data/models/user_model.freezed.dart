// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'user_model.dart';

T _$identity<T>(T value) => value;

ChatUserModel _$ChatUserModelFromJson(Map<String, dynamic> json) {
  return _ChatUserModel.fromJson(json);
}

/// @nodoc
mixin _$ChatUserModel {
  String get id => throw UnimplementedError();
  String? get name => throw UnimplementedError();
  String? get email => throw UnimplementedError();
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw UnimplementedError();
  String? get nickname => throw UnimplementedError();

  Map<String, dynamic> toJson() => throw UnimplementedError();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatUserModelCopyWith<ChatUserModel> get copyWith =>
      throw UnimplementedError();
}

/// @nodoc
abstract class $ChatUserModelCopyWith<$Res> {
  factory $ChatUserModelCopyWith(
    ChatUserModel value,
    $Res Function(ChatUserModel) then,
  ) = _$ChatUserModelCopyWithImpl<$Res>;

  $Res call({
    String id,
    String? name,
    String? email,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? nickname,
  });
}

/// @nodoc
class _$ChatUserModelCopyWithImpl<$Res>
    implements $ChatUserModelCopyWith<$Res> {
  _$ChatUserModelCopyWithImpl(this._value, this._then);

  final ChatUserModel _value;
  final $Res Function(ChatUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? nickname = freezed,
  }) {
    return _then(
      _value.copyWith(
        id: id == freezed ? _value.id : id as String,
        name: name == freezed ? _value.name : name as String?,
        email: email == freezed ? _value.email : email as String?,
        photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String?,
        nickname:
            nickname == freezed ? _value.nickname : nickname as String?,
      ),
    );
  }
}

/// @nodoc
abstract class _$$ChatUserModelImplCopyWith<$Res>
    implements $ChatUserModelCopyWith<$Res> {
  factory _$$ChatUserModelImplCopyWith(
    _$_ChatUserModel value,
    $Res Function(_$_ChatUserModel) then,
  ) = __$$ChatUserModelImplCopyWithImpl<$Res>;

  @override
  $Res call({
    String id,
    String? name,
    String? email,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? nickname,
  });
}

/// @nodoc
class __$$ChatUserModelImplCopyWithImpl<$Res>
    extends _$ChatUserModelCopyWithImpl<$Res>
    implements _$$ChatUserModelImplCopyWith<$Res> {
  __$$ChatUserModelImplCopyWithImpl(
    _$_ChatUserModel _value,
    $Res Function(_$_ChatUserModel) _then,
  ) : super(_value, (v) => _then(v as _$_ChatUserModel));

  @override
  _$_ChatUserModel get _value => super._value as _$_ChatUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? nickname = freezed,
  }) {
    return _then(
      _$_ChatUserModel(
        id: id == freezed ? _value.id : id as String,
        name: name == freezed ? _value.name : name as String?,
        email: email == freezed ? _value.email : email as String?,
        photoUrl:
            photoUrl == freezed ? _value.photoUrl : photoUrl as String?,
        nickname:
            nickname == freezed ? _value.nickname : nickname as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatUserModel extends _ChatUserModel {
  const _$_ChatUserModel({
    required this.id,
    this.name,
    this.email,
    @JsonKey(name: 'photo_url') this.photoUrl,
    this.nickname,
  }) : super._();

  factory _$_ChatUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatUserModelFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  final String? nickname;

  @override
  String toString() {
    return 'ChatUserModel(id: $id, name: $name, email: $email, photoUrl: $photoUrl, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatUserModel &&
            other.id == id &&
            other.name == name &&
            other.email == email &&
            other.photoUrl == photoUrl &&
            other.nickname == nickname);
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, photoUrl, nickname);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$ChatUserModelImplCopyWith<_$_ChatUserModel> get copyWith =>
      __$$ChatUserModelImplCopyWithImpl<_$_ChatUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatUserModelToJson(this);
  }
}

abstract class _ChatUserModel extends ChatUserModel {
  const factory _ChatUserModel({
    required String id,
    String? name,
    String? email,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? nickname,
  }) = _$_ChatUserModel;
  const _ChatUserModel._() : super._();

  factory _ChatUserModel.fromJson(Map<String, dynamic> json) =
      _$_ChatUserModel.fromJson;
}
