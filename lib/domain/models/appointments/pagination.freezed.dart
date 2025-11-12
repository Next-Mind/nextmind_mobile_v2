// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationMeta {

 int get currentPage; int? get from; int get lastPage; String? get path; int get perPage; int? get to; int get total;
/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<PaginationMeta> get copyWith => _$PaginationMetaCopyWithImpl<PaginationMeta>(this as PaginationMeta, _$identity);

  /// Serializes this PaginationMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,path,perPage,to,total);

@override
String toString() {
  return 'PaginationMeta(currentPage: $currentPage, from: $from, lastPage: $lastPage, path: $path, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class $PaginationMetaCopyWith<$Res>  {
  factory $PaginationMetaCopyWith(PaginationMeta value, $Res Function(PaginationMeta) _then) = _$PaginationMetaCopyWithImpl;
@useResult
$Res call({
 int currentPage, int? from, int lastPage, String? path, int perPage, int? to, int total
});




}
/// @nodoc
class _$PaginationMetaCopyWithImpl<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._self, this._then);

  final PaginationMeta _self;
  final $Res Function(PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? from = freezed,Object? lastPage = null,Object? path = freezed,Object? perPage = null,Object? to = freezed,Object? total = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationMeta].
extension PaginationMetaPatterns on PaginationMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationMeta value)  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationMeta value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPage,  int? from,  int lastPage,  String? path,  int perPage,  int? to,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.path,_that.perPage,_that.to,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPage,  int? from,  int lastPage,  String? path,  int perPage,  int? to,  int total)  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta():
return $default(_that.currentPage,_that.from,_that.lastPage,_that.path,_that.perPage,_that.to,_that.total);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPage,  int? from,  int lastPage,  String? path,  int perPage,  int? to,  int total)?  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.currentPage,_that.from,_that.lastPage,_that.path,_that.perPage,_that.to,_that.total);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PaginationMeta implements PaginationMeta {
  const _PaginationMeta({this.currentPage = 1, this.from, this.lastPage = 1, this.path, this.perPage = 0, this.to, this.total = 0});
  factory _PaginationMeta.fromJson(Map<String, dynamic> json) => _$PaginationMetaFromJson(json);

@override@JsonKey() final  int currentPage;
@override final  int? from;
@override@JsonKey() final  int lastPage;
@override final  String? path;
@override@JsonKey() final  int perPage;
@override final  int? to;
@override@JsonKey() final  int total;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationMetaCopyWith<_PaginationMeta> get copyWith => __$PaginationMetaCopyWithImpl<_PaginationMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationMeta&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.from, from) || other.from == from)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage)&&(identical(other.path, path) || other.path == path)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.to, to) || other.to == to)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPage,from,lastPage,path,perPage,to,total);

@override
String toString() {
  return 'PaginationMeta(currentPage: $currentPage, from: $from, lastPage: $lastPage, path: $path, perPage: $perPage, to: $to, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PaginationMetaCopyWith<$Res> implements $PaginationMetaCopyWith<$Res> {
  factory _$PaginationMetaCopyWith(_PaginationMeta value, $Res Function(_PaginationMeta) _then) = __$PaginationMetaCopyWithImpl;
@override @useResult
$Res call({
 int currentPage, int? from, int lastPage, String? path, int perPage, int? to, int total
});




}
/// @nodoc
class __$PaginationMetaCopyWithImpl<$Res>
    implements _$PaginationMetaCopyWith<$Res> {
  __$PaginationMetaCopyWithImpl(this._self, this._then);

  final _PaginationMeta _self;
  final $Res Function(_PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? from = freezed,Object? lastPage = null,Object? path = freezed,Object? perPage = null,Object? to = freezed,Object? total = null,}) {
  return _then(_PaginationMeta(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as int?,lastPage: null == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as int,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as int?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PaginationLinks {

 String? get first; String? get last; String? get prev; String? get next;
/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<PaginationLinks> get copyWith => _$PaginationLinksCopyWithImpl<PaginationLinks>(this as PaginationLinks, _$identity);

  /// Serializes this PaginationLinks to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationLinks&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.prev, prev) || other.prev == prev)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,prev,next);

@override
String toString() {
  return 'PaginationLinks(first: $first, last: $last, prev: $prev, next: $next)';
}


}

/// @nodoc
abstract mixin class $PaginationLinksCopyWith<$Res>  {
  factory $PaginationLinksCopyWith(PaginationLinks value, $Res Function(PaginationLinks) _then) = _$PaginationLinksCopyWithImpl;
@useResult
$Res call({
 String? first, String? last, String? prev, String? next
});




}
/// @nodoc
class _$PaginationLinksCopyWithImpl<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._self, this._then);

  final PaginationLinks _self;
  final $Res Function(PaginationLinks) _then;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? first = freezed,Object? last = freezed,Object? prev = freezed,Object? next = freezed,}) {
  return _then(_self.copyWith(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationLinks].
extension PaginationLinksPatterns on PaginationLinks {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationLinks value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationLinks value)  $default,){
final _that = this;
switch (_that) {
case _PaginationLinks():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationLinks value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? first,  String? last,  String? prev,  String? next)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? first,  String? last,  String? prev,  String? next)  $default,) {final _that = this;
switch (_that) {
case _PaginationLinks():
return $default(_that.first,_that.last,_that.prev,_that.next);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? first,  String? last,  String? prev,  String? next)?  $default,) {final _that = this;
switch (_that) {
case _PaginationLinks() when $default != null:
return $default(_that.first,_that.last,_that.prev,_that.next);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PaginationLinks implements PaginationLinks {
  const _PaginationLinks({this.first, this.last, this.prev, this.next});
  factory _PaginationLinks.fromJson(Map<String, dynamic> json) => _$PaginationLinksFromJson(json);

@override final  String? first;
@override final  String? last;
@override final  String? prev;
@override final  String? next;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationLinksCopyWith<_PaginationLinks> get copyWith => __$PaginationLinksCopyWithImpl<_PaginationLinks>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationLinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationLinks&&(identical(other.first, first) || other.first == first)&&(identical(other.last, last) || other.last == last)&&(identical(other.prev, prev) || other.prev == prev)&&(identical(other.next, next) || other.next == next));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,first,last,prev,next);

@override
String toString() {
  return 'PaginationLinks(first: $first, last: $last, prev: $prev, next: $next)';
}


}

/// @nodoc
abstract mixin class _$PaginationLinksCopyWith<$Res> implements $PaginationLinksCopyWith<$Res> {
  factory _$PaginationLinksCopyWith(_PaginationLinks value, $Res Function(_PaginationLinks) _then) = __$PaginationLinksCopyWithImpl;
@override @useResult
$Res call({
 String? first, String? last, String? prev, String? next
});




}
/// @nodoc
class __$PaginationLinksCopyWithImpl<$Res>
    implements _$PaginationLinksCopyWith<$Res> {
  __$PaginationLinksCopyWithImpl(this._self, this._then);

  final _PaginationLinks _self;
  final $Res Function(_PaginationLinks) _then;

/// Create a copy of PaginationLinks
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? first = freezed,Object? last = freezed,Object? prev = freezed,Object? next = freezed,}) {
  return _then(_PaginationLinks(
first: freezed == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as String?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
