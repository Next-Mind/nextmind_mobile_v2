// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAddress {

 String get id; String get label; String get postalCode; String get street; String get complement; String get neighborhood; String get city; String get number; String get state; String get country; bool get isPrimary;
/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAddressCopyWith<UserAddress> get copyWith => _$UserAddressCopyWithImpl<UserAddress>(this as UserAddress, _$identity);

  /// Serializes this UserAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.street, street) || other.street == street)&&(identical(other.complement, complement) || other.complement == complement)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.city, city) || other.city == city)&&(identical(other.number, number) || other.number == number)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,postalCode,street,complement,neighborhood,city,number,state,country,isPrimary);

@override
String toString() {
  return 'UserAddress(id: $id, label: $label, postalCode: $postalCode, street: $street, complement: $complement, neighborhood: $neighborhood, city: $city, number: $number, state: $state, country: $country, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $UserAddressCopyWith<$Res>  {
  factory $UserAddressCopyWith(UserAddress value, $Res Function(UserAddress) _then) = _$UserAddressCopyWithImpl;
@useResult
$Res call({
 String id, String label, String postalCode, String street, String complement, String neighborhood, String city, String number, String state, String country, bool isPrimary
});




}
/// @nodoc
class _$UserAddressCopyWithImpl<$Res>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._self, this._then);

  final UserAddress _self;
  final $Res Function(UserAddress) _then;

/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? postalCode = null,Object? street = null,Object? complement = null,Object? neighborhood = null,Object? city = null,Object? number = null,Object? state = null,Object? country = null,Object? isPrimary = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,complement: null == complement ? _self.complement : complement // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserAddress].
extension UserAddressPatterns on UserAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAddress value)  $default,){
final _that = this;
switch (_that) {
case _UserAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAddress value)?  $default,){
final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String postalCode,  String street,  String complement,  String neighborhood,  String city,  String number,  String state,  String country,  bool isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
return $default(_that.id,_that.label,_that.postalCode,_that.street,_that.complement,_that.neighborhood,_that.city,_that.number,_that.state,_that.country,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String postalCode,  String street,  String complement,  String neighborhood,  String city,  String number,  String state,  String country,  bool isPrimary)  $default,) {final _that = this;
switch (_that) {
case _UserAddress():
return $default(_that.id,_that.label,_that.postalCode,_that.street,_that.complement,_that.neighborhood,_that.city,_that.number,_that.state,_that.country,_that.isPrimary);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String postalCode,  String street,  String complement,  String neighborhood,  String city,  String number,  String state,  String country,  bool isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _UserAddress() when $default != null:
return $default(_that.id,_that.label,_that.postalCode,_that.street,_that.complement,_that.neighborhood,_that.city,_that.number,_that.state,_that.country,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAddress implements UserAddress {
   _UserAddress({required this.id, required this.label, required this.postalCode, required this.street, required this.complement, required this.neighborhood, required this.city, required this.number, required this.state, required this.country, required this.isPrimary});
  factory _UserAddress.fromJson(Map<String, dynamic> json) => _$UserAddressFromJson(json);

@override final  String id;
@override final  String label;
@override final  String postalCode;
@override final  String street;
@override final  String complement;
@override final  String neighborhood;
@override final  String city;
@override final  String number;
@override final  String state;
@override final  String country;
@override final  bool isPrimary;

/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAddressCopyWith<_UserAddress> get copyWith => __$UserAddressCopyWithImpl<_UserAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAddress&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.street, street) || other.street == street)&&(identical(other.complement, complement) || other.complement == complement)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.city, city) || other.city == city)&&(identical(other.number, number) || other.number == number)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,postalCode,street,complement,neighborhood,city,number,state,country,isPrimary);

@override
String toString() {
  return 'UserAddress(id: $id, label: $label, postalCode: $postalCode, street: $street, complement: $complement, neighborhood: $neighborhood, city: $city, number: $number, state: $state, country: $country, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$UserAddressCopyWith<$Res> implements $UserAddressCopyWith<$Res> {
  factory _$UserAddressCopyWith(_UserAddress value, $Res Function(_UserAddress) _then) = __$UserAddressCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String postalCode, String street, String complement, String neighborhood, String city, String number, String state, String country, bool isPrimary
});




}
/// @nodoc
class __$UserAddressCopyWithImpl<$Res>
    implements _$UserAddressCopyWith<$Res> {
  __$UserAddressCopyWithImpl(this._self, this._then);

  final _UserAddress _self;
  final $Res Function(_UserAddress) _then;

/// Create a copy of UserAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? postalCode = null,Object? street = null,Object? complement = null,Object? neighborhood = null,Object? city = null,Object? number = null,Object? state = null,Object? country = null,Object? isPrimary = null,}) {
  return _then(_UserAddress(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,complement: null == complement ? _self.complement : complement // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
