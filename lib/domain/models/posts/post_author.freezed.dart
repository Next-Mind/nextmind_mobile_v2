// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PostAuthor _$PostAuthorFromJson(
  Map<String, dynamic> json
) {
    return _BasePostAuthor.fromJson(
      json
    );
}

/// @nodoc
mixin _$PostAuthor {

 String get id; String get name; String get photoUrl;
/// Create a copy of PostAuthor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostAuthorCopyWith<PostAuthor> get copyWith => _$PostAuthorCopyWithImpl<PostAuthor>(this as PostAuthor, _$identity);

  /// Serializes this PostAuthor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostAuthor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photoUrl);

@override
String toString() {
  return 'PostAuthor(id: $id, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class $PostAuthorCopyWith<$Res>  {
  factory $PostAuthorCopyWith(PostAuthor value, $Res Function(PostAuthor) _then) = _$PostAuthorCopyWithImpl;
@useResult
$Res call({
 String id, String name, String photoUrl
});




}
/// @nodoc
class _$PostAuthorCopyWithImpl<$Res>
    implements $PostAuthorCopyWith<$Res> {
  _$PostAuthorCopyWithImpl(this._self, this._then);

  final PostAuthor _self;
  final $Res Function(PostAuthor) _then;

/// Create a copy of PostAuthor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photoUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: null == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostAuthor].
extension PostAuthorPatterns on PostAuthor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasePostAuthor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasePostAuthor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasePostAuthor value)  $default,){
final _that = this;
switch (_that) {
case _BasePostAuthor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasePostAuthor value)?  $default,){
final _that = this;
switch (_that) {
case _BasePostAuthor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String photoUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasePostAuthor() when $default != null:
return $default(_that.id,_that.name,_that.photoUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String photoUrl)  $default,) {final _that = this;
switch (_that) {
case _BasePostAuthor():
return $default(_that.id,_that.name,_that.photoUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String photoUrl)?  $default,) {final _that = this;
switch (_that) {
case _BasePostAuthor() when $default != null:
return $default(_that.id,_that.name,_that.photoUrl);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _BasePostAuthor implements PostAuthor {
  const _BasePostAuthor({required this.id, required this.name, required this.photoUrl});
  factory _BasePostAuthor.fromJson(Map<String, dynamic> json) => _$BasePostAuthorFromJson(json);

@override final  String id;
@override final  String name;
@override final  String photoUrl;

/// Create a copy of PostAuthor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasePostAuthorCopyWith<_BasePostAuthor> get copyWith => __$BasePostAuthorCopyWithImpl<_BasePostAuthor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasePostAuthorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasePostAuthor&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photoUrl);

@override
String toString() {
  return 'PostAuthor(id: $id, name: $name, photoUrl: $photoUrl)';
}


}

/// @nodoc
abstract mixin class _$BasePostAuthorCopyWith<$Res> implements $PostAuthorCopyWith<$Res> {
  factory _$BasePostAuthorCopyWith(_BasePostAuthor value, $Res Function(_BasePostAuthor) _then) = __$BasePostAuthorCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String photoUrl
});




}
/// @nodoc
class __$BasePostAuthorCopyWithImpl<$Res>
    implements _$BasePostAuthorCopyWith<$Res> {
  __$BasePostAuthorCopyWithImpl(this._self, this._then);

  final _BasePostAuthor _self;
  final $Res Function(_BasePostAuthor) _then;

/// Create a copy of PostAuthor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photoUrl = null,}) {
  return _then(_BasePostAuthor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoUrl: null == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
