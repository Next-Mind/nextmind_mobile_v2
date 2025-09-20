// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PostSummary _$PostSummaryFromJson(
  Map<String, dynamic> json
) {
    return _BasePostSummary.fromJson(
      json
    );
}

/// @nodoc
mixin _$PostSummary {

 String get id; String get title; String get imageUrl; PostCategory get category; PostAuthor get author;
/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostSummaryCopyWith<PostSummary> get copyWith => _$PostSummaryCopyWithImpl<PostSummary>(this as PostSummary, _$identity);

  /// Serializes this PostSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.author, author) || other.author == author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,category,author);

@override
String toString() {
  return 'PostSummary(id: $id, title: $title, imageUrl: $imageUrl, category: $category, author: $author)';
}


}

/// @nodoc
abstract mixin class $PostSummaryCopyWith<$Res>  {
  factory $PostSummaryCopyWith(PostSummary value, $Res Function(PostSummary) _then) = _$PostSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String title, String imageUrl, PostCategory category, PostAuthor author
});


$PostCategoryCopyWith<$Res> get category;$PostAuthorCopyWith<$Res> get author;

}
/// @nodoc
class _$PostSummaryCopyWithImpl<$Res>
    implements $PostSummaryCopyWith<$Res> {
  _$PostSummaryCopyWithImpl(this._self, this._then);

  final PostSummary _self;
  final $Res Function(PostSummary) _then;

/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? category = null,Object? author = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PostCategory,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as PostAuthor,
  ));
}
/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCategoryCopyWith<$Res> get category {
  
  return $PostCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostAuthorCopyWith<$Res> get author {
  
  return $PostAuthorCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostSummary].
extension PostSummaryPatterns on PostSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasePostSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasePostSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasePostSummary value)  $default,){
final _that = this;
switch (_that) {
case _BasePostSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasePostSummary value)?  $default,){
final _that = this;
switch (_that) {
case _BasePostSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  PostCategory category,  PostAuthor author)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasePostSummary() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.category,_that.author);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String imageUrl,  PostCategory category,  PostAuthor author)  $default,) {final _that = this;
switch (_that) {
case _BasePostSummary():
return $default(_that.id,_that.title,_that.imageUrl,_that.category,_that.author);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String imageUrl,  PostCategory category,  PostAuthor author)?  $default,) {final _that = this;
switch (_that) {
case _BasePostSummary() when $default != null:
return $default(_that.id,_that.title,_that.imageUrl,_that.category,_that.author);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _BasePostSummary implements PostSummary {
  const _BasePostSummary({required this.id, required this.title, required this.imageUrl, required this.category, required this.author});
  factory _BasePostSummary.fromJson(Map<String, dynamic> json) => _$BasePostSummaryFromJson(json);

@override final  String id;
@override final  String title;
@override final  String imageUrl;
@override final  PostCategory category;
@override final  PostAuthor author;

/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasePostSummaryCopyWith<_BasePostSummary> get copyWith => __$BasePostSummaryCopyWithImpl<_BasePostSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasePostSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasePostSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.author, author) || other.author == author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,imageUrl,category,author);

@override
String toString() {
  return 'PostSummary(id: $id, title: $title, imageUrl: $imageUrl, category: $category, author: $author)';
}


}

/// @nodoc
abstract mixin class _$BasePostSummaryCopyWith<$Res> implements $PostSummaryCopyWith<$Res> {
  factory _$BasePostSummaryCopyWith(_BasePostSummary value, $Res Function(_BasePostSummary) _then) = __$BasePostSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String imageUrl, PostCategory category, PostAuthor author
});


@override $PostCategoryCopyWith<$Res> get category;@override $PostAuthorCopyWith<$Res> get author;

}
/// @nodoc
class __$BasePostSummaryCopyWithImpl<$Res>
    implements _$BasePostSummaryCopyWith<$Res> {
  __$BasePostSummaryCopyWithImpl(this._self, this._then);

  final _BasePostSummary _self;
  final $Res Function(_BasePostSummary) _then;

/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? imageUrl = null,Object? category = null,Object? author = null,}) {
  return _then(_BasePostSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PostCategory,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as PostAuthor,
  ));
}

/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostCategoryCopyWith<$Res> get category {
  
  return $PostCategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of PostSummary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PostAuthorCopyWith<$Res> get author {
  
  return $PostAuthorCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}

// dart format on
