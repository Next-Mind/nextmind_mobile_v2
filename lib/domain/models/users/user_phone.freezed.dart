// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPhone {

 String get id; int get countryCode; int get areaCode; String get number; bool get isWhatsapp; bool get isPrimary;
/// Create a copy of UserPhone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPhoneCopyWith<UserPhone> get copyWith => _$UserPhoneCopyWithImpl<UserPhone>(this as UserPhone, _$identity);

  /// Serializes this UserPhone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPhone&&(identical(other.id, id) || other.id == id)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.areaCode, areaCode) || other.areaCode == areaCode)&&(identical(other.number, number) || other.number == number)&&(identical(other.isWhatsapp, isWhatsapp) || other.isWhatsapp == isWhatsapp)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countryCode,areaCode,number,isWhatsapp,isPrimary);

@override
String toString() {
  return 'UserPhone(id: $id, countryCode: $countryCode, areaCode: $areaCode, number: $number, isWhatsapp: $isWhatsapp, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $UserPhoneCopyWith<$Res>  {
  factory $UserPhoneCopyWith(UserPhone value, $Res Function(UserPhone) _then) = _$UserPhoneCopyWithImpl;
@useResult
$Res call({
 String id, int countryCode, int areaCode, String number, bool isWhatsapp, bool isPrimary
});




}
/// @nodoc
class _$UserPhoneCopyWithImpl<$Res>
    implements $UserPhoneCopyWith<$Res> {
  _$UserPhoneCopyWithImpl(this._self, this._then);

  final UserPhone _self;
  final $Res Function(UserPhone) _then;

/// Create a copy of UserPhone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? countryCode = null,Object? areaCode = null,Object? number = null,Object? isWhatsapp = null,Object? isPrimary = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as int,areaCode: null == areaCode ? _self.areaCode : areaCode // ignore: cast_nullable_to_non_nullable
as int,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,isWhatsapp: null == isWhatsapp ? _self.isWhatsapp : isWhatsapp // ignore: cast_nullable_to_non_nullable
as bool,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPhone].
extension UserPhonePatterns on UserPhone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPhone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPhone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPhone value)  $default,){
final _that = this;
switch (_that) {
case _UserPhone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPhone value)?  $default,){
final _that = this;
switch (_that) {
case _UserPhone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int countryCode,  int areaCode,  String number,  bool isWhatsapp,  bool isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPhone() when $default != null:
return $default(_that.id,_that.countryCode,_that.areaCode,_that.number,_that.isWhatsapp,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int countryCode,  int areaCode,  String number,  bool isWhatsapp,  bool isPrimary)  $default,) {final _that = this;
switch (_that) {
case _UserPhone():
return $default(_that.id,_that.countryCode,_that.areaCode,_that.number,_that.isWhatsapp,_that.isPrimary);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int countryCode,  int areaCode,  String number,  bool isWhatsapp,  bool isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _UserPhone() when $default != null:
return $default(_that.id,_that.countryCode,_that.areaCode,_that.number,_that.isWhatsapp,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPhone implements UserPhone {
  const _UserPhone({required this.id, required this.countryCode, required this.areaCode, required this.number, required this.isWhatsapp, required this.isPrimary});
  factory _UserPhone.fromJson(Map<String, dynamic> json) => _$UserPhoneFromJson(json);

@override final  String id;
@override final  int countryCode;
@override final  int areaCode;
@override final  String number;
@override final  bool isWhatsapp;
@override final  bool isPrimary;

/// Create a copy of UserPhone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPhoneCopyWith<_UserPhone> get copyWith => __$UserPhoneCopyWithImpl<_UserPhone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPhoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPhone&&(identical(other.id, id) || other.id == id)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.areaCode, areaCode) || other.areaCode == areaCode)&&(identical(other.number, number) || other.number == number)&&(identical(other.isWhatsapp, isWhatsapp) || other.isWhatsapp == isWhatsapp)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countryCode,areaCode,number,isWhatsapp,isPrimary);

@override
String toString() {
  return 'UserPhone(id: $id, countryCode: $countryCode, areaCode: $areaCode, number: $number, isWhatsapp: $isWhatsapp, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$UserPhoneCopyWith<$Res> implements $UserPhoneCopyWith<$Res> {
  factory _$UserPhoneCopyWith(_UserPhone value, $Res Function(_UserPhone) _then) = __$UserPhoneCopyWithImpl;
@override @useResult
$Res call({
 String id, int countryCode, int areaCode, String number, bool isWhatsapp, bool isPrimary
});




}
/// @nodoc
class __$UserPhoneCopyWithImpl<$Res>
    implements _$UserPhoneCopyWith<$Res> {
  __$UserPhoneCopyWithImpl(this._self, this._then);

  final _UserPhone _self;
  final $Res Function(_UserPhone) _then;

/// Create a copy of UserPhone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? countryCode = null,Object? areaCode = null,Object? number = null,Object? isWhatsapp = null,Object? isPrimary = null,}) {
  return _then(_UserPhone(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as int,areaCode: null == areaCode ? _self.areaCode : areaCode // ignore: cast_nullable_to_non_nullable
as int,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,isWhatsapp: null == isWhatsapp ? _self.isWhatsapp : isWhatsapp // ignore: cast_nullable_to_non_nullable
as bool,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
