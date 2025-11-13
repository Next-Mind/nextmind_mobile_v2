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
          return BaseAppointment.fromJson(
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( BaseAppointment value)?  $default,{TResult Function( EmptyAppointment value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BaseAppointment() when $default != null:
return $default(_that);case EmptyAppointment() when empty != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( BaseAppointment value)  $default,{required TResult Function( EmptyAppointment value)  empty,}){
final _that = this;
switch (_that) {
case BaseAppointment():
return $default(_that);case EmptyAppointment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( BaseAppointment value)?  $default,{TResult? Function( EmptyAppointment value)?  empty,}){
final _that = this;
switch (_that) {
case BaseAppointment() when $default != null:
return $default(_that);case EmptyAppointment() when empty != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String availabilityId,  String psychologistId,  DateTime scheduledAt,  String? description,  String status,  Psychologist? psychologist)?  $default,{TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BaseAppointment() when $default != null:
return $default(_that.id,_that.availabilityId,_that.psychologistId,_that.scheduledAt,_that.description,_that.status,_that.psychologist);case EmptyAppointment() when empty != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String availabilityId,  String psychologistId,  DateTime scheduledAt,  String? description,  String status,  Psychologist? psychologist)  $default,{required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case BaseAppointment():
return $default(_that.id,_that.availabilityId,_that.psychologistId,_that.scheduledAt,_that.description,_that.status,_that.psychologist);case EmptyAppointment():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String availabilityId,  String psychologistId,  DateTime scheduledAt,  String? description,  String status,  Psychologist? psychologist)?  $default,{TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case BaseAppointment() when $default != null:
return $default(_that.id,_that.availabilityId,_that.psychologistId,_that.scheduledAt,_that.description,_that.status,_that.psychologist);case EmptyAppointment() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class BaseAppointment implements Appointment {
  const BaseAppointment({required this.id, required this.availabilityId, required this.psychologistId, required this.scheduledAt, this.description, required this.status, this.psychologist, final  String? $type}): $type = $type ?? 'default';
  factory BaseAppointment.fromJson(Map<String, dynamic> json) => _$BaseAppointmentFromJson(json);

 final  String id;
 final  String availabilityId;
 final  String psychologistId;
 final  DateTime scheduledAt;
 final  String? description;
 final  String status;
 final  Psychologist? psychologist;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseAppointmentCopyWith<BaseAppointment> get copyWith => _$BaseAppointmentCopyWithImpl<BaseAppointment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseAppointmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseAppointment&&(identical(other.id, id) || other.id == id)&&(identical(other.availabilityId, availabilityId) || other.availabilityId == availabilityId)&&(identical(other.psychologistId, psychologistId) || other.psychologistId == psychologistId)&&(identical(other.scheduledAt, scheduledAt) || other.scheduledAt == scheduledAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.psychologist, psychologist) || other.psychologist == psychologist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,availabilityId,psychologistId,scheduledAt,description,status,psychologist);

@override
String toString() {
  return 'Appointment(id: $id, availabilityId: $availabilityId, psychologistId: $psychologistId, scheduledAt: $scheduledAt, description: $description, status: $status, psychologist: $psychologist)';
}


}

/// @nodoc
abstract mixin class $BaseAppointmentCopyWith<$Res> implements $AppointmentCopyWith<$Res> {
  factory $BaseAppointmentCopyWith(BaseAppointment value, $Res Function(BaseAppointment) _then) = _$BaseAppointmentCopyWithImpl;
@useResult
$Res call({
 String id, String availabilityId, String psychologistId, DateTime scheduledAt, String? description, String status, Psychologist? psychologist
});


$PsychologistCopyWith<$Res>? get psychologist;

}
/// @nodoc
class _$BaseAppointmentCopyWithImpl<$Res>
    implements $BaseAppointmentCopyWith<$Res> {
  _$BaseAppointmentCopyWithImpl(this._self, this._then);

  final BaseAppointment _self;
  final $Res Function(BaseAppointment) _then;

/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? availabilityId = null,Object? psychologistId = null,Object? scheduledAt = null,Object? description = freezed,Object? status = null,Object? psychologist = freezed,}) {
  return _then(BaseAppointment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,availabilityId: null == availabilityId ? _self.availabilityId : availabilityId // ignore: cast_nullable_to_non_nullable
as String,psychologistId: null == psychologistId ? _self.psychologistId : psychologistId // ignore: cast_nullable_to_non_nullable
as String,scheduledAt: null == scheduledAt ? _self.scheduledAt : scheduledAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,psychologist: freezed == psychologist ? _self.psychologist : psychologist // ignore: cast_nullable_to_non_nullable
as Psychologist?,
  ));
}

/// Create a copy of Appointment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PsychologistCopyWith<$Res>? get psychologist {
    if (_self.psychologist == null) {
    return null;
  }

  return $PsychologistCopyWith<$Res>(_self.psychologist!, (value) {
    return _then(_self.copyWith(psychologist: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class EmptyAppointment implements Appointment {
  const EmptyAppointment({final  String? $type}): $type = $type ?? 'empty';
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





/// @nodoc
mixin _$AppointmentsPage {

 List<Appointment> get data; PaginationMeta get meta; PaginationLinks get links;
/// Create a copy of AppointmentsPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsPageCopyWith<AppointmentsPage> get copyWith => _$AppointmentsPageCopyWithImpl<AppointmentsPage>(this as AppointmentsPage, _$identity);

  /// Serializes this AppointmentsPage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsPage&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,links);

@override
String toString() {
  return 'AppointmentsPage(data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class $AppointmentsPageCopyWith<$Res>  {
  factory $AppointmentsPageCopyWith(AppointmentsPage value, $Res Function(AppointmentsPage) _then) = _$AppointmentsPageCopyWithImpl;
@useResult
$Res call({
 List<Appointment> data, PaginationMeta meta, PaginationLinks links
});


$PaginationMetaCopyWith<$Res> get meta;$PaginationLinksCopyWith<$Res> get links;

}
/// @nodoc
class _$AppointmentsPageCopyWithImpl<$Res>
    implements $AppointmentsPageCopyWith<$Res> {
  _$AppointmentsPageCopyWithImpl(this._self, this._then);

  final AppointmentsPage _self;
  final $Res Function(AppointmentsPage) _then;

/// Create a copy of AppointmentsPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? links = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Appointment>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,
  ));
}
/// Create a copy of AppointmentsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of AppointmentsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationLinksCopyWith<$Res> get links {
  
  return $PaginationLinksCopyWith<$Res>(_self.links, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppointmentsPage].
extension AppointmentsPagePatterns on AppointmentsPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppointmentsPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentsPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppointmentsPage value)  $default,){
final _that = this;
switch (_that) {
case _AppointmentsPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppointmentsPage value)?  $default,){
final _that = this;
switch (_that) {
case _AppointmentsPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Appointment> data,  PaginationMeta meta,  PaginationLinks links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentsPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Appointment> data,  PaginationMeta meta,  PaginationLinks links)  $default,) {final _that = this;
switch (_that) {
case _AppointmentsPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Appointment> data,  PaginationMeta meta,  PaginationLinks links)?  $default,) {final _that = this;
switch (_that) {
case _AppointmentsPage() when $default != null:
return $default(_that.data,_that.meta,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppointmentsPage implements AppointmentsPage {
  const _AppointmentsPage({required final  List<Appointment> data, required this.meta, required this.links}): _data = data;
  factory _AppointmentsPage.fromJson(Map<String, dynamic> json) => _$AppointmentsPageFromJson(json);

 final  List<Appointment> _data;
@override List<Appointment> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  PaginationMeta meta;
@override final  PaginationLinks links;

/// Create a copy of AppointmentsPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppointmentsPageCopyWith<_AppointmentsPage> get copyWith => __$AppointmentsPageCopyWithImpl<_AppointmentsPage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppointmentsPageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentsPage&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,links);

@override
String toString() {
  return 'AppointmentsPage(data: $data, meta: $meta, links: $links)';
}


}

/// @nodoc
abstract mixin class _$AppointmentsPageCopyWith<$Res> implements $AppointmentsPageCopyWith<$Res> {
  factory _$AppointmentsPageCopyWith(_AppointmentsPage value, $Res Function(_AppointmentsPage) _then) = __$AppointmentsPageCopyWithImpl;
@override @useResult
$Res call({
 List<Appointment> data, PaginationMeta meta, PaginationLinks links
});


@override $PaginationMetaCopyWith<$Res> get meta;@override $PaginationLinksCopyWith<$Res> get links;

}
/// @nodoc
class __$AppointmentsPageCopyWithImpl<$Res>
    implements _$AppointmentsPageCopyWith<$Res> {
  __$AppointmentsPageCopyWithImpl(this._self, this._then);

  final _AppointmentsPage _self;
  final $Res Function(_AppointmentsPage) _then;

/// Create a copy of AppointmentsPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? links = null,}) {
  return _then(_AppointmentsPage(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Appointment>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginationMeta,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as PaginationLinks,
  ));
}

/// Create a copy of AppointmentsPage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get meta {
  
  return $PaginationMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}/// Create a copy of AppointmentsPage
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
