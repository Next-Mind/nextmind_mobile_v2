// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'psychologist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Psychologist {

 String get id; String get name; String? get crp; String? get specialty; List<String> get specialties; String? get bio; String? get photoUrl;
/// Create a copy of Psychologist
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PsychologistCopyWith<Psychologist> get copyWith => _$PsychologistCopyWithImpl<Psychologist>(this as Psychologist, _$identity);

  /// Serializes this Psychologist to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Psychologist&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.crp, crp) || other.crp == crp)&&(identical(other.specialty, specialty) || other.specialty == specialty)&&const DeepCollectionEquality().equals(other.specialties, specialties)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,crp,specialty,const DeepCollectionEquality().hash(specialties),bio,photoUrl);

@override
String toString() {
  return 'Psychologist(id: $id, name: $name, crp: $crp, specialty: $specialty, specialties: $specialties, bio: $bio, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class $PsychologistCopyWith<$Res>  {
  factory $PsychologistCopyWith(Psychologist value, $Res Function(Psychologist) _then) = _$PsychologistCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? crp, String? specialty, List<String> specialties, String? bio, String? photoUrl
});




}
/// @nodoc
class _$PsychologistCopyWithImpl<$Res>
    implements $PsychologistCopyWith<$Res> {
  _$PsychologistCopyWithImpl(this._self, this._then);

  final Psychologist _self;
  final $Res Function(Psychologist) _then;

/// Create a copy of Psychologist
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? crp = freezed,Object? specialty = freezed,Object? specialties = null,Object? bio = freezed,Object? photoUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,crp: freezed == crp ? _self.crp : crp // ignore: cast_nullable_to_non_nullable
as String?,specialty: freezed == specialty ? _self.specialty : specialty // ignore: cast_nullable_to_non_nullable
as String?,specialties: null == specialties ? _self.specialties : specialties // ignore: cast_nullable_to_non_nullable
as List<String>,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Psychologist].
extension PsychologistPatterns on Psychologist {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Psychologist value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Psychologist() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Psychologist value)  $default,){
final _that = this;
switch (_that) {
case _Psychologist():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Psychologist value)?  $default,){
final _that = this;
switch (_that) {
case _Psychologist() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? crp,  String? specialty,  List<String> specialties,  String? bio,  String? photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Psychologist() when $default != null:
return $default(_that.id,_that.name,_that.crp,_that.specialty,_that.specialties,_that.bio,_that.photoUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? crp,  String? specialty,  List<String> specialties,  String? bio,  String? photoUrl)  $default,) {final _that = this;
switch (_that) {
case _Psychologist():
return $default(_that.id,_that.name,_that.crp,_that.specialty,_that.specialties,_that.bio,_that.photoUrl);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? crp,  String? specialty,  List<String> specialties,  String? bio,  String? photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _Psychologist() when $default != null:
return $default(_that.id,_that.name,_that.crp,_that.specialty,_that.specialties,_that.bio,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Psychologist implements Psychologist {
  const _Psychologist({required this.id, required this.name, this.crp, this.specialty, final  List<String> specialties = const <String>[], this.bio, this.photoUrl}): _specialties = specialties;
  factory _Psychologist.fromJson(Map<String, dynamic> json) => _$PsychologistFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? crp;
@override final  String? specialty;
 final  List<String> _specialties;
@override@JsonKey() List<String> get specialties {
  if (_specialties is EqualUnmodifiableListView) return _specialties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialties);
}

@override final  String? bio;
@override final  String? photoUrl;

/// Create a copy of Psychologist
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PsychologistCopyWith<_Psychologist> get copyWith => __$PsychologistCopyWithImpl<_Psychologist>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PsychologistToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Psychologist&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.crp, crp) || other.crp == crp)&&(identical(other.specialty, specialty) || other.specialty == specialty)&&const DeepCollectionEquality().equals(other._specialties, _specialties)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,crp,specialty,const DeepCollectionEquality().hash(_specialties),bio,photoUrl);

@override
String toString() {
  return 'Psychologist(id: $id, name: $name, crp: $crp, specialty: $specialty, specialties: $specialties, bio: $bio, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$PsychologistCopyWith<$Res> implements $PsychologistCopyWith<$Res> {
  factory _$PsychologistCopyWith(_Psychologist value, $Res Function(_Psychologist) _then) = __$PsychologistCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? crp, String? specialty, List<String> specialties, String? bio, String? photoUrl
});




}
/// @nodoc
class __$PsychologistCopyWithImpl<$Res>
    implements _$PsychologistCopyWith<$Res> {
  __$PsychologistCopyWithImpl(this._self, this._then);

  final _Psychologist _self;
  final $Res Function(_Psychologist) _then;

/// Create a copy of Psychologist
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? crp = freezed,Object? specialty = freezed,Object? specialties = null,Object? bio = freezed,Object? photoUrl = freezed,}) {
  return _then(_Psychologist(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,crp: freezed == crp ? _self.crp : crp // ignore: cast_nullable_to_non_nullable
as String?,specialty: freezed == specialty ? _self.specialty : specialty // ignore: cast_nullable_to_non_nullable
as String?,specialties: null == specialties ? _self._specialties : specialties // ignore: cast_nullable_to_non_nullable
as List<String>,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PsychologistsPage {

 List<Psychologist> get data; PaginationMeta get meta; PaginationLinks get links;
/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PsychologistsPageCopyWith<PsychologistsPage> get copyWith => _$PsychologistsPageCopyWithImpl<PsychologistsPage>(this as PsychologistsPage, _$identity);

  /// Serializes this PsychologistsPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PsychologistsPage&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,links);

@override
String toString() {
  return 'PsychologistsPage(data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class $PsychologistsPageCopyWith<$Res>  {
  factory $PsychologistsPageCopyWith(PsychologistsPage value, $Res Function(PsychologistsPage) _then) = _$PsychologistsPageCopyWithImpl;
@useResult
$Res call({
 List<Psychologist> data, PaginationMeta meta, PaginationLinks links
});


$PaginationMetaCopyWith<$Res> get meta;$PaginationLinksCopyWith<$Res> get links;

}
/// @nodoc
class _$PsychologistsPageCopyWithImpl<$Res>
    implements $PsychologistsPageCopyWith<$Res> {
  _$PsychologistsPageCopyWithImpl(this._self, this._then);

  final PsychologistsPage _self;
  final $Res Function(PsychologistsPage) _then;

/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? links = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Psychologist>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,
  ));
}
/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<$Res> get links {
  
  return $PaginationLinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// Adds pattern-matching-related methods to [PsychologistsPage].
extension PsychologistsPagePatterns on PsychologistsPage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PsychologistsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PsychologistsPage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PsychologistsPage value)  $default,){
final _that = this;
switch (_that) {
case _PsychologistsPage():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PsychologistsPage value)?  $default,){
final _that = this;
switch (_that) {
case _PsychologistsPage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Psychologist> data,  PaginationMeta meta,  PaginationLinks links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PsychologistsPage() when $default != null:
return $default(_that.data,_that.meta,_that.links);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Psychologist> data,  PaginationMeta meta,  PaginationLinks links)  $default,) {final _that = this;
switch (_that) {
case _PsychologistsPage():
return $default(_that.data,_that.meta,_that.links);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Psychologist> data,  PaginationMeta meta,  PaginationLinks links)?  $default,) {final _that = this;
switch (_that) {
case _PsychologistsPage() when $default != null:
return $default(_that.data,_that.meta,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PsychologistsPage implements PsychologistsPage {
  const _PsychologistsPage({required final  List<Psychologist> data, required this.meta, required this.links}): _data = data;
  factory _PsychologistsPage.fromJson(Map<String, dynamic> json) => _$PsychologistsPageFromJson(json);

 final  List<Psychologist> _data;
@override List<Psychologist> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  PaginationMeta meta;
@override final  PaginationLinks links;

/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PsychologistsPageCopyWith<_PsychologistsPage> get copyWith => __$PsychologistsPageCopyWithImpl<_PsychologistsPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PsychologistsPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PsychologistsPage&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,links);

@override
String toString() {
  return 'PsychologistsPage(data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class _$PsychologistsPageCopyWith<$Res> implements $PsychologistsPageCopyWith<$Res> {
  factory _$PsychologistsPageCopyWith(_PsychologistsPage value, $Res Function(_PsychologistsPage) _then) = __$PsychologistsPageCopyWithImpl;
@override @useResult
$Res call({
 List<Psychologist> data, PaginationMeta meta, PaginationLinks links
});


@override $PaginationMetaCopyWith<$Res> get meta;@override $PaginationLinksCopyWith<$Res> get links;

}
/// @nodoc
class __$PsychologistsPageCopyWithImpl<$Res>
    implements _$PsychologistsPageCopyWith<$Res> {
  __$PsychologistsPageCopyWithImpl(this._self, this._then);

  final _PsychologistsPage _self;
  final $Res Function(_PsychologistsPage) _then;

/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? links = null,}) {
  return _then(_PsychologistsPage(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Psychologist>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,
  ));
}

/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of PsychologistsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<$Res> get links {
  
  return $PaginationLinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}

// dart format on
