part of 'psychologist.dart';

// ignore_for_file: type=lint

import 'dart:collection';

import 'package:collection/collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

Psychologist _$PsychologistFromJson(Map<String, dynamic> json) {
  return _Psychologist.fromJson(json);
}

/// @nodoc
mixin _$Psychologist {
  String get id;
  String get name;
  String? get crp;
  String? get specialty;
  List<String> get specialties;
  String? get bio;
  String? get photoUrl;
  Map<String, dynamic> toJson();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PsychologistCopyWith<Psychologist> get copyWith;
}

/// @nodoc
abstract class $PsychologistCopyWith<$Res> {
  factory $PsychologistCopyWith(
    Psychologist value,
    $Res Function(Psychologist) then,
  ) = _$PsychologistCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String id,
    String name,
    String? crp,
    String? specialty,
    List<String> specialties,
    String? bio,
    String? photoUrl,
  });
}

/// @nodoc
class _$PsychologistCopyWithImpl<$Res>
    implements $PsychologistCopyWith<$Res> {
  _$PsychologistCopyWithImpl(this._value, this._then);

  final Psychologist _value;
  final $Res Function(Psychologist) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? crp = freezed,
    Object? specialty = freezed,
    Object? specialties = null,
    Object? bio = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == null ? _value.id : id as String,
      name: name == null ? _value.name : name as String,
      crp: crp == freezed ? _value.crp : crp as String?,
      specialty:
          specialty == freezed ? _value.specialty : specialty as String?,
      specialties: specialties == null
          ? _value.specialties
          : specialties as List<String>,
      bio: bio == freezed ? _value.bio : bio as String?,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String?,
    ));
  }
}

/// @nodoc
abstract class _$$PsychologistImplCopyWith<$Res>
    implements $PsychologistCopyWith<$Res> {
  factory _$$PsychologistImplCopyWith(
    _Psychologist value,
    $Res Function(_Psychologist) then,
  ) = __$$PsychologistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? crp,
    String? specialty,
    List<String> specialties,
    String? bio,
    String? photoUrl,
  });
}

/// @nodoc
class __$$PsychologistImplCopyWithImpl<$Res>
    extends _$PsychologistCopyWithImpl<$Res>
    implements _$$PsychologistImplCopyWith<$Res> {
  __$$PsychologistImplCopyWithImpl(
    _Psychologist _value,
    $Res Function(_Psychologist) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? crp = freezed,
    Object? specialty = freezed,
    Object? specialties = null,
    Object? bio = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_Psychologist(
      id: id == null ? _value.id : id as String,
      name: name == null ? _value.name : name as String,
      crp: crp == freezed ? _value.crp : crp as String?,
      specialty:
          specialty == freezed ? _value.specialty : specialty as String?,
      specialties: specialties == null
          ? _value.specialties
          : specialties as List<String>,
      bio: bio == freezed ? _value.bio : bio as String?,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(fieldRename: FieldRename.snake)
class _Psychologist implements Psychologist {
  const _Psychologist({
    required this.id,
    required this.name,
    this.crp,
    this.specialty,
    this.specialties = const <String>[],
    this.bio,
    this.photoUrl,
  });

  factory _Psychologist.fromJson(Map<String, dynamic> json) =>
      _$PsychologistFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? crp;
  @override
  final String? specialty;
  @override
  @JsonKey()
  final List<String> specialties;
  @override
  final String? bio;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'Psychologist(id: $id, name: $name, crp: $crp, specialty: $specialty, specialties: $specialties, bio: $bio, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Psychologist &&
            other.id == id &&
            other.name == name &&
            other.crp == crp &&
            other.specialty == specialty &&
            const DeepCollectionEquality()
                .equals(other.specialties, specialties) &&
            other.bio == bio &&
            other.photoUrl == photoUrl);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        id,
        name,
        crp,
        specialty,
        const DeepCollectionEquality().hash(specialties),
        bio,
        photoUrl,
      );

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$PsychologistImplCopyWith<_Psychologist> get copyWith =>
      __$$PsychologistImplCopyWithImpl<_Psychologist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PsychologistToJson(this);
  }
}

PsychologistsPage _$PsychologistsPageFromJson(Map<String, dynamic> json) {
  return _PsychologistsPage.fromJson(json);
}

/// @nodoc
mixin _$PsychologistsPage {
  List<Psychologist> get data;
  PaginationMeta get meta;
  PaginationLinks get links;
  Map<String, dynamic> toJson();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PsychologistsPageCopyWith<PsychologistsPage> get copyWith;
}

/// @nodoc
abstract class $PsychologistsPageCopyWith<$Res> {
  factory $PsychologistsPageCopyWith(
    PsychologistsPage value,
    $Res Function(PsychologistsPage) then,
  ) = _$PsychologistsPageCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<Psychologist> data,
    PaginationMeta meta,
    PaginationLinks links,
  });

  $PaginationMetaCopyWith<$Res> get meta;
  $PaginationLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$PsychologistsPageCopyWithImpl<$Res>
    implements $PsychologistsPageCopyWith<$Res> {
  _$PsychologistsPageCopyWithImpl(this._value, this._then);

  final PsychologistsPage _value;
  final $Res Function(PsychologistsPage) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      data: data == null ? _value.data : data as List<Psychologist>,
      meta: meta == null ? _value.meta : meta as PaginationMeta,
      links: links == null ? _value.links : links as PaginationLinks,
    ));
  }

  @override
  $PaginationMetaCopyWith<$Res> get meta {
    return $PaginationMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $PaginationLinksCopyWith<$Res> get links {
    return $PaginationLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$$PsychologistsPageImplCopyWith<$Res>
    implements $PsychologistsPageCopyWith<$Res> {
  factory _$$PsychologistsPageImplCopyWith(
    _PsychologistsPage value,
    $Res Function(_PsychologistsPage) then,
  ) = __$$PsychologistsPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Psychologist> data,
    PaginationMeta meta,
    PaginationLinks links,
  });

  @override
  $PaginationMetaCopyWith<$Res> get meta;
  @override
  $PaginationLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$PsychologistsPageImplCopyWithImpl<$Res>
    extends _$PsychologistsPageCopyWithImpl<$Res>
    implements _$$PsychologistsPageImplCopyWith<$Res> {
  __$$PsychologistsPageImplCopyWithImpl(
    _PsychologistsPage _value,
    $Res Function(_PsychologistsPage) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
    Object? links = null,
  }) {
    return _then(_PsychologistsPage(
      data: data == null ? _value.data : data as List<Psychologist>,
      meta: meta == null ? _value.meta : meta as PaginationMeta,
      links: links == null ? _value.links : links as PaginationLinks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PsychologistsPage implements PsychologistsPage {
  const _PsychologistsPage({
    required final List<Psychologist> data,
    required this.meta,
    required this.links,
  }) : _data = data;

  factory _PsychologistsPage.fromJson(Map<String, dynamic> json) =>
      _$PsychologistsPageFromJson(json);

  final List<Psychologist> _data;
  @override
  List<Psychologist> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginationMeta meta;
  @override
  final PaginationLinks links;

  @override
  String toString() {
    return 'PsychologistsPage(data: $data, meta: $meta, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PsychologistsPage &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            other.meta == meta &&
            other.links == links);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_data),
        meta,
        links,
      );

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$PsychologistsPageImplCopyWith<_PsychologistsPage> get copyWith =>
      __$$PsychologistsPageImplCopyWithImpl<_PsychologistsPage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PsychologistsPageToJson(this);
  }
}
