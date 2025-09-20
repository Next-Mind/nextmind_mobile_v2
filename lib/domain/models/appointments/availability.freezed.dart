// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Availability _$AvailabilityFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'default':
          return _BaseAvailability.fromJson(
            json
          );
                case 'empty':
          return EmptyAvailability.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Availability',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Availability {



  /// Serializes this Availability to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Availability);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Availability()';
}


}

/// @nodoc
class $AvailabilityCopyWith<$Res>  {
$AvailabilityCopyWith(Availability _, $Res Function(Availability) __);
}


/// Adds pattern-matching-related methods to [Availability].
extension AvailabilityPatterns on Availability {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseAvailability value)?  $default,{TResult Function( EmptyAvailability value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseAvailability() when $default != null:
return $default(_that);case EmptyAvailability() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseAvailability value)  $default,{required TResult Function( EmptyAvailability value)  empty,}){
final _that = this;
switch (_that) {
case _BaseAvailability():
return $default(_that);case EmptyAvailability():
return empty(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseAvailability value)?  $default,{TResult? Function( EmptyAvailability value)?  empty,}){
final _that = this;
switch (_that) {
case _BaseAvailability() when $default != null:
return $default(_that);case EmptyAvailability() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime date,  int status)?  $default,{TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseAvailability() when $default != null:
return $default(_that.id,_that.date,_that.status);case EmptyAvailability() when empty != null:
return empty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime date,  int status)  $default,{required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _BaseAvailability():
return $default(_that.id,_that.date,_that.status);case EmptyAvailability():
return empty();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime date,  int status)?  $default,{TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _BaseAvailability() when $default != null:
return $default(_that.id,_that.date,_that.status);case EmptyAvailability() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BaseAvailability implements Availability {
   _BaseAvailability({required this.id, required this.date, required this.status, final  String? $type}): $type = $type ?? 'default';
  factory _BaseAvailability.fromJson(Map<String, dynamic> json) => _$BaseAvailabilityFromJson(json);

 final  String id;
 final  DateTime date;
 final  int status;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseAvailabilityCopyWith<_BaseAvailability> get copyWith => __$BaseAvailabilityCopyWithImpl<_BaseAvailability>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseAvailabilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseAvailability&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date,status);

@override
String toString() {
  return 'Availability(id: $id, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class _$BaseAvailabilityCopyWith<$Res> implements $AvailabilityCopyWith<$Res> {
  factory _$BaseAvailabilityCopyWith(_BaseAvailability value, $Res Function(_BaseAvailability) _then) = __$BaseAvailabilityCopyWithImpl;
@useResult
$Res call({
 String id, DateTime date, int status
});




}
/// @nodoc
class __$BaseAvailabilityCopyWithImpl<$Res>
    implements _$BaseAvailabilityCopyWith<$Res> {
  __$BaseAvailabilityCopyWithImpl(this._self, this._then);

  final _BaseAvailability _self;
  final $Res Function(_BaseAvailability) _then;

/// Create a copy of Availability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? status = null,}) {
  return _then(_BaseAvailability(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class EmptyAvailability implements Availability {
   EmptyAvailability({final  String? $type}): $type = $type ?? 'empty';
  factory EmptyAvailability.fromJson(Map<String, dynamic> json) => _$EmptyAvailabilityFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$EmptyAvailabilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyAvailability);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Availability.empty()';
}


}




// dart format on
