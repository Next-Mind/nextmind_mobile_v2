// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
User _$UserFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'default':
          return _BaseUser.fromJson(
            json
          );
                case 'notLogged':
          return NotLoggedUser.fromJson(
            json
          );
                case 'logged':
          return LoggedUser.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'User',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$User {



  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'User()';
}


}

/// @nodoc
class $UserCopyWith<$Res>  {
$UserCopyWith(User _, $Res Function(User) __);
}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseUser value)?  $default,{TResult Function( NotLoggedUser value)?  notLogged,TResult Function( LoggedUser value)?  logged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseUser() when $default != null:
return $default(_that);case NotLoggedUser() when notLogged != null:
return notLogged(_that);case LoggedUser() when logged != null:
return logged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseUser value)  $default,{required TResult Function( NotLoggedUser value)  notLogged,required TResult Function( LoggedUser value)  logged,}){
final _that = this;
switch (_that) {
case _BaseUser():
return $default(_that);case NotLoggedUser():
return notLogged(_that);case LoggedUser():
return logged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseUser value)?  $default,{TResult? Function( NotLoggedUser value)?  notLogged,TResult? Function( LoggedUser value)?  logged,}){
final _that = this;
switch (_that) {
case _BaseUser() when $default != null:
return $default(_that);case NotLoggedUser() when notLogged != null:
return notLogged(_that);case LoggedUser() when logged != null:
return logged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email)?  $default,{TResult Function()?  notLogged,TResult Function( String id,  String name,  String email,  bool emailVerified,  String? cpf,  String? birthDate,  String? photoUrl,  bool isNewUser,  String token,  List<UserPhone> phones,  List<UserAddress> addresses,  UserProfile? profile)?  logged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseUser() when $default != null:
return $default(_that.id,_that.name,_that.email);case NotLoggedUser() when notLogged != null:
return notLogged();case LoggedUser() when logged != null:
return logged(_that.id,_that.name,_that.email,_that.emailVerified,_that.cpf,_that.birthDate,_that.photoUrl,_that.isNewUser,_that.token,_that.phones,_that.addresses,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email)  $default,{required TResult Function()  notLogged,required TResult Function( String id,  String name,  String email,  bool emailVerified,  String? cpf,  String? birthDate,  String? photoUrl,  bool isNewUser,  String token,  List<UserPhone> phones,  List<UserAddress> addresses,  UserProfile? profile)  logged,}) {final _that = this;
switch (_that) {
case _BaseUser():
return $default(_that.id,_that.name,_that.email);case NotLoggedUser():
return notLogged();case LoggedUser():
return logged(_that.id,_that.name,_that.email,_that.emailVerified,_that.cpf,_that.birthDate,_that.photoUrl,_that.isNewUser,_that.token,_that.phones,_that.addresses,_that.profile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email)?  $default,{TResult? Function()?  notLogged,TResult? Function( String id,  String name,  String email,  bool emailVerified,  String? cpf,  String? birthDate,  String? photoUrl,  bool isNewUser,  String token,  List<UserPhone> phones,  List<UserAddress> addresses,  UserProfile? profile)?  logged,}) {final _that = this;
switch (_that) {
case _BaseUser() when $default != null:
return $default(_that.id,_that.name,_that.email);case NotLoggedUser() when notLogged != null:
return notLogged();case LoggedUser() when logged != null:
return logged(_that.id,_that.name,_that.email,_that.emailVerified,_that.cpf,_that.birthDate,_that.photoUrl,_that.isNewUser,_that.token,_that.phones,_that.addresses,_that.profile);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _BaseUser extends User {
  const _BaseUser({required this.id, required this.name, required this.email, final  String? $type}): $type = $type ?? 'default',super._();
  factory _BaseUser.fromJson(Map<String, dynamic> json) => _$BaseUserFromJson(json);

 final  String id;
 final  String name;
 final  String email;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseUserCopyWith<_BaseUser> get copyWith => __$BaseUserCopyWithImpl<_BaseUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$BaseUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$BaseUserCopyWith(_BaseUser value, $Res Function(_BaseUser) _then) = __$BaseUserCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email
});




}
/// @nodoc
class __$BaseUserCopyWithImpl<$Res>
    implements _$BaseUserCopyWith<$Res> {
  __$BaseUserCopyWithImpl(this._self, this._then);

  final _BaseUser _self;
  final $Res Function(_BaseUser) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,}) {
  return _then(_BaseUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class NotLoggedUser extends User {
  const NotLoggedUser({final  String? $type}): $type = $type ?? 'notLogged',super._();
  factory NotLoggedUser.fromJson(Map<String, dynamic> json) => _$NotLoggedUserFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$NotLoggedUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotLoggedUser);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'User.notLogged()';
}


}




/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class LoggedUser extends User {
  const LoggedUser({required this.id, required this.name, required this.email, required this.emailVerified, this.cpf, this.birthDate, this.photoUrl, this.isNewUser = false, required this.token, final  List<UserPhone> phones = const <UserPhone>[], final  List<UserAddress> addresses = const <UserAddress>[], this.profile, final  String? $type}): _phones = phones,_addresses = addresses,$type = $type ?? 'logged',super._();
  factory LoggedUser.fromJson(Map<String, dynamic> json) => _$LoggedUserFromJson(json);

 final  String id;
 final  String name;
 final  String email;
 final  bool emailVerified;
 final  String? cpf;
 final  String? birthDate;
 final  String? photoUrl;
@JsonKey() final  bool isNewUser;
 final  String token;
 final  List<UserPhone> _phones;
@JsonKey() List<UserPhone> get phones {
  if (_phones is EqualUnmodifiableListView) return _phones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phones);
}

 final  List<UserAddress> _addresses;
@JsonKey() List<UserAddress> get addresses {
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_addresses);
}

 final  UserProfile? profile;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoggedUserCopyWith<LoggedUser> get copyWith => _$LoggedUserCopyWithImpl<LoggedUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoggedUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoggedUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other._phones, _phones)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,emailVerified,cpf,birthDate,photoUrl,isNewUser,token,const DeepCollectionEquality().hash(_phones),const DeepCollectionEquality().hash(_addresses),profile);

@override
String toString() {
  return 'User.logged(id: $id, name: $name, email: $email, emailVerified: $emailVerified, cpf: $cpf, birthDate: $birthDate, photoUrl: $photoUrl, isNewUser: $isNewUser, token: $token, phones: $phones, addresses: $addresses, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $LoggedUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $LoggedUserCopyWith(LoggedUser value, $Res Function(LoggedUser) _then) = _$LoggedUserCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, bool emailVerified, String? cpf, String? birthDate, String? photoUrl, bool isNewUser, String token, List<UserPhone> phones, List<UserAddress> addresses, UserProfile? profile
});


$UserProfileCopyWith<$Res>? get profile;

}
/// @nodoc
class _$LoggedUserCopyWithImpl<$Res>
    implements $LoggedUserCopyWith<$Res> {
  _$LoggedUserCopyWithImpl(this._self, this._then);

  final LoggedUser _self;
  final $Res Function(LoggedUser) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? emailVerified = null,Object? cpf = freezed,Object? birthDate = freezed,Object? photoUrl = freezed,Object? isNewUser = null,Object? token = null,Object? phones = null,Object? addresses = null,Object? profile = freezed,}) {
  return _then(LoggedUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,cpf: freezed == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,phones: null == phones ? _self._phones : phones // ignore: cast_nullable_to_non_nullable
as List<UserPhone>,addresses: null == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<UserAddress>,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserProfile?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $UserProfileCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
