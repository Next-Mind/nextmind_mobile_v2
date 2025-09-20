// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Appointment _$AppointmentFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'default':
          return _BaseAppointment.fromJson(
            json
          );
                case 'next':
          return NextAppointment.fromJson(
            json
          );
                case 'empty':
          return EmptyAppointment.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Appointment',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Appointment {



  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Appointment);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Appointment()';
}


}

/// @nodoc
class $AppointmentCopyWith<$Res>  {
$AppointmentCopyWith(Appointment _, $Res Function(Appointment) __);
}


/// Adds pattern-matching-related methods to [Appointment].
extension AppointmentPatterns on Appointment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseAppointment value)?  $default,{TResult Function( NextAppointment value)?  next,TResult Function( EmptyAppointment value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseAppointment() when $default != null:
return $default(_that);case NextAppointment() when next != null:
return next(_that);case EmptyAppointment() when empty != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseAppointment value)  $default,{required TResult Function( NextAppointment value)  next,required TResult Function( EmptyAppointment value)  empty,}){
final _that = this;
switch (_that) {
case _BaseAppointment():
return $default(_that);case NextAppointment():
return next(_that);case EmptyAppointment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseAppointment value)?  $default,{TResult? Function( NextAppointment value)?  next,TResult? Function( EmptyAppointment value)?  empty,}){
final _that = this;
switch (_that) {
case _BaseAppointment() when $default != null:
return $default(_that);case NextAppointment() when next != null:
return next(_that);case EmptyAppointment() when empty != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String availabilityId,  String userId,  String description,  String resolution,  String notesPrivate,  String attachmentPath,  String sessionLink,  String status,  String cancelledBy,  String cancelReason,  int durationMinutes,  int rating,  bool reminderSent,  String createdAt,  String updatedAt)?  $default,{TResult Function( int id,  DateTime date)?  next,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseAppointment() when $default != null:
return $default(_that.id,_that.availabilityId,_that.userId,_that.description,_that.resolution,_that.notesPrivate,_that.attachmentPath,_that.sessionLink,_that.status,_that.cancelledBy,_that.cancelReason,_that.durationMinutes,_that.rating,_that.reminderSent,_that.createdAt,_that.updatedAt);case NextAppointment() when next != null:
return next(_that.id,_that.date);case EmptyAppointment() when empty != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String availabilityId,  String userId,  String description,  String resolution,  String notesPrivate,  String attachmentPath,  String sessionLink,  String status,  String cancelledBy,  String cancelReason,  int durationMinutes,  int rating,  bool reminderSent,  String createdAt,  String updatedAt)  $default,{required TResult Function( int id,  DateTime date)  next,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _BaseAppointment():
return $default(_that.id,_that.availabilityId,_that.userId,_that.description,_that.resolution,_that.notesPrivate,_that.attachmentPath,_that.sessionLink,_that.status,_that.cancelledBy,_that.cancelReason,_that.durationMinutes,_that.rating,_that.reminderSent,_that.createdAt,_that.updatedAt);case NextAppointment():
return next(_that.id,_that.date);case EmptyAppointment():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String availabilityId,  String userId,  String description,  String resolution,  String notesPrivate,  String attachmentPath,  String sessionLink,  String status,  String cancelledBy,  String cancelReason,  int durationMinutes,  int rating,  bool reminderSent,  String createdAt,  String updatedAt)?  $default,{TResult? Function( int id,  DateTime date)?  next,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _BaseAppointment() when $default != null:
return $default(_that.id,_that.availabilityId,_that.userId,_that.description,_that.resolution,_that.notesPrivate,_that.attachmentPath,_that.sessionLink,_that.status,_that.cancelledBy,_that.cancelReason,_that.durationMinutes,_that.rating,_that.reminderSent,_that.createdAt,_that.updatedAt);case NextAppointment() when next != null:
return next(_that.id,_that.date);case EmptyAppointment() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BaseAppointment implements Appointment {
   _BaseAppointment({required this.id, required this.availabilityId, required this.userId, required this.description, required this.resolution, required this.notesPrivate, required this.attachmentPath, required this.sessionLink, required this.status, required this.cancelledBy, required this.cancelReason, required this.durationMinutes, required this.rating, required this.reminderSent, required this.createdAt, required this.updatedAt, final  String? $type}): $type = $type ?? 'default';
  factory _BaseAppointment.fromJson(Map<String, dynamic> json) => _$BaseAppointmentFromJson(json);

 final  String id;
 final  String availabilityId;
 final  String userId;
 final  String description;
 final  String resolution;
 final  String notesPrivate;
 final  String attachmentPath;
 final  String sessionLink;
 final  String status;
 final  String cancelledBy;
 final  String cancelReason;
 final  int durationMinutes;
 final  int rating;
 final  bool reminderSent;
 final  String createdAt;
 final  String updatedAt;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseAppointmentCopyWith<_BaseAppointment> get copyWith => __$BaseAppointmentCopyWithImpl<_BaseAppointment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseAppointmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseAppointment&&(identical(other.id, id) || other.id == id)&&(identical(other.availabilityId, availabilityId) || other.availabilityId == availabilityId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.description, description) || other.description == description)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.notesPrivate, notesPrivate) || other.notesPrivate == notesPrivate)&&(identical(other.attachmentPath, attachmentPath) || other.attachmentPath == attachmentPath)&&(identical(other.sessionLink, sessionLink) || other.sessionLink == sessionLink)&&(identical(other.status, status) || other.status == status)&&(identical(other.cancelledBy, cancelledBy) || other.cancelledBy == cancelledBy)&&(identical(other.cancelReason, cancelReason) || other.cancelReason == cancelReason)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reminderSent, reminderSent) || other.reminderSent == reminderSent)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,availabilityId,userId,description,resolution,notesPrivate,attachmentPath,sessionLink,status,cancelledBy,cancelReason,durationMinutes,rating,reminderSent,createdAt,updatedAt);

@override
String toString() {
  return 'Appointment(id: $id, availabilityId: $availabilityId, userId: $userId, description: $description, resolution: $resolution, notesPrivate: $notesPrivate, attachmentPath: $attachmentPath, sessionLink: $sessionLink, status: $status, cancelledBy: $cancelledBy, cancelReason: $cancelReason, durationMinutes: $durationMinutes, rating: $rating, reminderSent: $reminderSent, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$BaseAppointmentCopyWith<$Res> implements $AppointmentCopyWith<$Res> {
  factory _$BaseAppointmentCopyWith(_BaseAppointment value, $Res Function(_BaseAppointment) _then) = __$BaseAppointmentCopyWithImpl;
@useResult
$Res call({
 String id, String availabilityId, String userId, String description, String resolution, String notesPrivate, String attachmentPath, String sessionLink, String status, String cancelledBy, String cancelReason, int durationMinutes, int rating, bool reminderSent, String createdAt, String updatedAt
});




}
/// @nodoc
class __$BaseAppointmentCopyWithImpl<$Res>
    implements _$BaseAppointmentCopyWith<$Res> {
  __$BaseAppointmentCopyWithImpl(this._self, this._then);

  final _BaseAppointment _self;
  final $Res Function(_BaseAppointment) _then;

/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? availabilityId = null,Object? userId = null,Object? description = null,Object? resolution = null,Object? notesPrivate = null,Object? attachmentPath = null,Object? sessionLink = null,Object? status = null,Object? cancelledBy = null,Object? cancelReason = null,Object? durationMinutes = null,Object? rating = null,Object? reminderSent = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_BaseAppointment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,availabilityId: null == availabilityId ? _self.availabilityId : availabilityId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String,notesPrivate: null == notesPrivate ? _self.notesPrivate : notesPrivate // ignore: cast_nullable_to_non_nullable
as String,attachmentPath: null == attachmentPath ? _self.attachmentPath : attachmentPath // ignore: cast_nullable_to_non_nullable
as String,sessionLink: null == sessionLink ? _self.sessionLink : sessionLink // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,cancelledBy: null == cancelledBy ? _self.cancelledBy : cancelledBy // ignore: cast_nullable_to_non_nullable
as String,cancelReason: null == cancelReason ? _self.cancelReason : cancelReason // ignore: cast_nullable_to_non_nullable
as String,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,reminderSent: null == reminderSent ? _self.reminderSent : reminderSent // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class NextAppointment implements Appointment {
   NextAppointment({required this.id, required this.date, final  String? $type}): $type = $type ?? 'next';
  factory NextAppointment.fromJson(Map<String, dynamic> json) => _$NextAppointmentFromJson(json);

 final  int id;
 final  DateTime date;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NextAppointmentCopyWith<NextAppointment> get copyWith => _$NextAppointmentCopyWithImpl<NextAppointment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NextAppointmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextAppointment&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,date);

@override
String toString() {
  return 'Appointment.next(id: $id, date: $date)';
}


}

/// @nodoc
abstract mixin class $NextAppointmentCopyWith<$Res> implements $AppointmentCopyWith<$Res> {
  factory $NextAppointmentCopyWith(NextAppointment value, $Res Function(NextAppointment) _then) = _$NextAppointmentCopyWithImpl;
@useResult
$Res call({
 int id, DateTime date
});




}
/// @nodoc
class _$NextAppointmentCopyWithImpl<$Res>
    implements $NextAppointmentCopyWith<$Res> {
  _$NextAppointmentCopyWithImpl(this._self, this._then);

  final NextAppointment _self;
  final $Res Function(NextAppointment) _then;

/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,}) {
  return _then(NextAppointment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
@JsonSerializable()

class EmptyAppointment implements Appointment {
   EmptyAppointment({final  String? $type}): $type = $type ?? 'empty';
  factory EmptyAppointment.fromJson(Map<String, dynamic> json) => _$EmptyAppointmentFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$EmptyAppointmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyAppointment);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Appointment.empty()';
}


}




// dart format on
