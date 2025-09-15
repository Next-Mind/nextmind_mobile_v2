// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserProfile _$UserProfileFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'default':
          return _BaseUserProfile.fromJson(
            json
          );
                case 'student':
          return StudentProfile.fromJson(
            json
          );
                case 'empty':
          return EmptyUserProfile.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'UserProfile',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$UserProfile {



  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfile()';
}


}

/// @nodoc
class $UserProfileCopyWith<$Res>  {
$UserProfileCopyWith(UserProfile _, $Res Function(UserProfile) __);
}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseUserProfile value)?  $default,{TResult Function( StudentProfile value)?  student,TResult Function( EmptyUserProfile value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseUserProfile() when $default != null:
return $default(_that);case StudentProfile() when student != null:
return student(_that);case EmptyUserProfile() when empty != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseUserProfile value)  $default,{required TResult Function( StudentProfile value)  student,required TResult Function( EmptyUserProfile value)  empty,}){
final _that = this;
switch (_that) {
case _BaseUserProfile():
return $default(_that);case StudentProfile():
return student(_that);case EmptyUserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseUserProfile value)?  $default,{TResult? Function( StudentProfile value)?  student,TResult? Function( EmptyUserProfile value)?  empty,}){
final _that = this;
switch (_that) {
case _BaseUserProfile() when $default != null:
return $default(_that);case StudentProfile() when student != null:
return student(_that);case EmptyUserProfile() when empty != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id)?  $default,{TResult Function( int id,  String ra,  String course,  String bio)?  student,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseUserProfile() when $default != null:
return $default(_that.id);case StudentProfile() when student != null:
return student(_that.id,_that.ra,_that.course,_that.bio);case EmptyUserProfile() when empty != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id)  $default,{required TResult Function( int id,  String ra,  String course,  String bio)  student,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _BaseUserProfile():
return $default(_that.id);case StudentProfile():
return student(_that.id,_that.ra,_that.course,_that.bio);case EmptyUserProfile():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id)?  $default,{TResult? Function( int id,  String ra,  String course,  String bio)?  student,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _BaseUserProfile() when $default != null:
return $default(_that.id);case StudentProfile() when student != null:
return student(_that.id,_that.ra,_that.course,_that.bio);case EmptyUserProfile() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BaseUserProfile implements UserProfile {
   _BaseUserProfile({required this.id, final  String? $type}): $type = $type ?? 'default';
  factory _BaseUserProfile.fromJson(Map<String, dynamic> json) => _$BaseUserProfileFromJson(json);

 final  int id;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseUserProfileCopyWith<_BaseUserProfile> get copyWith => __$BaseUserProfileCopyWithImpl<_BaseUserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseUserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseUserProfile&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'UserProfile(id: $id)';
}


}

/// @nodoc
abstract mixin class _$BaseUserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$BaseUserProfileCopyWith(_BaseUserProfile value, $Res Function(_BaseUserProfile) _then) = __$BaseUserProfileCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$BaseUserProfileCopyWithImpl<$Res>
    implements _$BaseUserProfileCopyWith<$Res> {
  __$BaseUserProfileCopyWithImpl(this._self, this._then);

  final _BaseUserProfile _self;
  final $Res Function(_BaseUserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_BaseUserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class StudentProfile implements UserProfile {
   StudentProfile({required this.id, this.ra = 'undefined', this.course = 'undefined', this.bio = 'undefined', final  String? $type}): $type = $type ?? 'student';
  factory StudentProfile.fromJson(Map<String, dynamic> json) => _$StudentProfileFromJson(json);

 final  int id;
@JsonKey() final  String ra;
@JsonKey() final  String course;
@JsonKey() final  String bio;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StudentProfileCopyWith<StudentProfile> get copyWith => _$StudentProfileCopyWithImpl<StudentProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StudentProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.ra, ra) || other.ra == ra)&&(identical(other.course, course) || other.course == course)&&(identical(other.bio, bio) || other.bio == bio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ra,course,bio);

@override
String toString() {
  return 'UserProfile.student(id: $id, ra: $ra, course: $course, bio: $bio)';
}


}

/// @nodoc
abstract mixin class $StudentProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory $StudentProfileCopyWith(StudentProfile value, $Res Function(StudentProfile) _then) = _$StudentProfileCopyWithImpl;
@useResult
$Res call({
 int id, String ra, String course, String bio
});




}
/// @nodoc
class _$StudentProfileCopyWithImpl<$Res>
    implements $StudentProfileCopyWith<$Res> {
  _$StudentProfileCopyWithImpl(this._self, this._then);

  final StudentProfile _self;
  final $Res Function(StudentProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ra = null,Object? course = null,Object? bio = null,}) {
  return _then(StudentProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,ra: null == ra ? _self.ra : ra // ignore: cast_nullable_to_non_nullable
as String,course: null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class EmptyUserProfile implements UserProfile {
   EmptyUserProfile({final  String? $type}): $type = $type ?? 'empty';
  factory EmptyUserProfile.fromJson(Map<String, dynamic> json) => _$EmptyUserProfileFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$EmptyUserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyUserProfile);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfile.empty()';
}


}




// dart format on
