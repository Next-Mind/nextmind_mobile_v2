// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PostCategory _$PostCategoryFromJson(
  Map<String, dynamic> json
) {
    return _BasePostCategory.fromJson(
      json
    );
}

/// @nodoc
mixin _$PostCategory {

 String get id; String get name; String get slug;
/// Create a copy of PostCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCategoryCopyWith<PostCategory> get copyWith => _$PostCategoryCopyWithImpl<PostCategory>(this as PostCategory, _$identity);

  /// Serializes this PostCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'PostCategory(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class $PostCategoryCopyWith<$Res>  {
  factory $PostCategoryCopyWith(PostCategory value, $Res Function(PostCategory) _then) = _$PostCategoryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug
});




}
/// @nodoc
class _$PostCategoryCopyWithImpl<$Res>
    implements $PostCategoryCopyWith<$Res> {
  _$PostCategoryCopyWithImpl(this._self, this._then);

  final PostCategory _self;
  final $Res Function(PostCategory) _then;

/// Create a copy of PostCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostCategory].
extension PostCategoryPatterns on PostCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasePostCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasePostCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasePostCategory value)  $default,){
final _that = this;
switch (_that) {
case _BasePostCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasePostCategory value)?  $default,){
final _that = this;
switch (_that) {
case _BasePostCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasePostCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug)  $default,) {final _that = this;
switch (_that) {
case _BasePostCategory():
return $default(_that.id,_that.name,_that.slug);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug)?  $default,) {final _that = this;
switch (_that) {
case _BasePostCategory() when $default != null:
return $default(_that.id,_that.name,_that.slug);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _BasePostCategory implements PostCategory {
  const _BasePostCategory({required this.id, required this.name, required this.slug});
  factory _BasePostCategory.fromJson(Map<String, dynamic> json) => _$BasePostCategoryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String slug;

/// Create a copy of PostCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasePostCategoryCopyWith<_BasePostCategory> get copyWith => __$BasePostCategoryCopyWithImpl<_BasePostCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasePostCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasePostCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug);

@override
String toString() {
  return 'PostCategory(id: $id, name: $name, slug: $slug)';
}


}

/// @nodoc
abstract mixin class _$BasePostCategoryCopyWith<$Res> implements $PostCategoryCopyWith<$Res> {
  factory _$BasePostCategoryCopyWith(_BasePostCategory value, $Res Function(_BasePostCategory) _then) = __$BasePostCategoryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug
});




}
/// @nodoc
class __$BasePostCategoryCopyWithImpl<$Res>
    implements _$BasePostCategoryCopyWith<$Res> {
  __$BasePostCategoryCopyWithImpl(this._self, this._then);

  final _BasePostCategory _self;
  final $Res Function(_BasePostCategory) _then;

/// Create a copy of PostCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,}) {
  return _then(_BasePostCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
