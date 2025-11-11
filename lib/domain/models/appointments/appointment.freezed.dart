part of 'appointment.dart';

// ignore_for_file: type=lint

import 'dart:collection';

import 'package:collection/collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  String get id;
  String get availabilityId;
  String get psychologistId;
  DateTime get scheduledAt;
  String? get description;
  String get status;
  Psychologist? get psychologist;
  Map<String, dynamic> toJson();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentCopyWith<Appointment> get copyWith;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
    Appointment value,
    $Res Function(Appointment) then,
  ) = _$AppointmentCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String id,
    String availabilityId,
    String psychologistId,
    DateTime scheduledAt,
    String? description,
    String status,
    Psychologist? psychologist,
  });

  $PsychologistCopyWith<$Res>? get psychologist;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  final Appointment _value;
  final $Res Function(Appointment) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? availabilityId = null,
    Object? psychologistId = null,
    Object? scheduledAt = null,
    Object? description = freezed,
    Object? status = null,
    Object? psychologist = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == null ? _value.id : id as String,
      availabilityId: availabilityId == null
          ? _value.availabilityId
          : availabilityId as String,
      psychologistId: psychologistId == null
          ? _value.psychologistId
          : psychologistId as String,
      scheduledAt: scheduledAt == null
          ? _value.scheduledAt
          : scheduledAt as DateTime,
      description:
          description == freezed ? _value.description : description as String?,
      status: status == null ? _value.status : status as String,
      psychologist: psychologist == freezed
          ? _value.psychologist
          : psychologist as Psychologist?,
    ));
  }

  @override
  $PsychologistCopyWith<$Res>? get psychologist {
    if (_value.psychologist == null) {
      return null;
    }
    return $PsychologistCopyWith<$Res>(_value.psychologist!, (value) {
      return _then(_value.copyWith(psychologist: value));
    });
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
    _Appointment value,
    $Res Function(_Appointment) then,
  ) = __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String availabilityId,
    String psychologistId,
    DateTime scheduledAt,
    String? description,
    String status,
    Psychologist? psychologist,
  });

  @override
  $PsychologistCopyWith<$Res>? get psychologist;
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
    _Appointment _value,
    $Res Function(_Appointment) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? availabilityId = null,
    Object? psychologistId = null,
    Object? scheduledAt = null,
    Object? description = freezed,
    Object? status = null,
    Object? psychologist = freezed,
  }) {
    return _then(_Appointment(
      id: id == null ? _value.id : id as String,
      availabilityId: availabilityId == null
          ? _value.availabilityId
          : availabilityId as String,
      psychologistId: psychologistId == null
          ? _value.psychologistId
          : psychologistId as String,
      scheduledAt: scheduledAt == null
          ? _value.scheduledAt
          : scheduledAt as DateTime,
      description:
          description == freezed ? _value.description : description as String?,
      status: status == null ? _value.status : status as String,
      psychologist: psychologist == freezed
          ? _value.psychologist
          : psychologist as Psychologist?,
    ));
  }
}

/// @nodoc
@JsonSerializable(fieldRename: FieldRename.snake)
class _Appointment implements Appointment {
  const _Appointment({
    required this.id,
    required this.availabilityId,
    required this.psychologistId,
    required this.scheduledAt,
    this.description,
    required this.status,
    this.psychologist,
  });

  factory _Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  @override
  final String id;
  @override
  final String availabilityId;
  @override
  final String psychologistId;
  @override
  final DateTime scheduledAt;
  @override
  final String? description;
  @override
  final String status;
  @override
  final Psychologist? psychologist;

  @override
  String toString() {
    return 'Appointment(id: $id, availabilityId: $availabilityId, psychologistId: $psychologistId, scheduledAt: $scheduledAt, description: $description, status: $status, psychologist: $psychologist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Appointment &&
            other.id == id &&
            other.availabilityId == availabilityId &&
            other.psychologistId == psychologistId &&
            other.scheduledAt == scheduledAt &&
            other.description == description &&
            other.status == status &&
            other.psychologist == psychologist);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        id,
        availabilityId,
        psychologistId,
        scheduledAt,
        description,
        status,
        psychologist,
      );

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$AppointmentImplCopyWith<_Appointment> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_Appointment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppointmentToJson(this);
  }
}

AppointmentsPage _$AppointmentsPageFromJson(Map<String, dynamic> json) {
  return _AppointmentsPage.fromJson(json);
}

/// @nodoc
mixin _$AppointmentsPage {
  List<Appointment> get data;
  PaginationMeta get meta;
  PaginationLinks get links;
  Map<String, dynamic> toJson();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentsPageCopyWith<AppointmentsPage> get copyWith;
}

/// @nodoc
abstract class $AppointmentsPageCopyWith<$Res> {
  factory $AppointmentsPageCopyWith(
    AppointmentsPage value,
    $Res Function(AppointmentsPage) then,
  ) = _$AppointmentsPageCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<Appointment> data,
    PaginationMeta meta,
    PaginationLinks links,
  });

  $PaginationMetaCopyWith<$Res> get meta;
  $PaginationLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$AppointmentsPageCopyWithImpl<$Res>
    implements $AppointmentsPageCopyWith<$Res> {
  _$AppointmentsPageCopyWithImpl(this._value, this._then);

  final AppointmentsPage _value;
  final $Res Function(AppointmentsPage) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      data: data == null ? _value.data : data as List<Appointment>,
      meta: meta == null ? _value.meta : meta as PaginationMeta,
      links: links == null ? _value.links : links as PaginationLinks,
    ));
  }

  @override
  $PaginationMetaCopyWith<$Res> get meta {
    return $PaginationMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }

  @override
  $PaginationLinksCopyWith<$Res> get links {
    return $PaginationLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$$AppointmentsPageImplCopyWith<$Res>
    implements $AppointmentsPageCopyWith<$Res> {
  factory _$$AppointmentsPageImplCopyWith(
    _AppointmentsPage value,
    $Res Function(_AppointmentsPage) then,
  ) = __$$AppointmentsPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Appointment> data,
    PaginationMeta meta,
    PaginationLinks links,
  });

  @override
  $PaginationMetaCopyWith<$Res> get meta;
  @override
  $PaginationLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$$AppointmentsPageImplCopyWithImpl<$Res>
    extends _$AppointmentsPageCopyWithImpl<$Res>
    implements _$$AppointmentsPageImplCopyWith<$Res> {
  __$$AppointmentsPageImplCopyWithImpl(
    _AppointmentsPage _value,
    $Res Function(_AppointmentsPage) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
    Object? links = null,
  }) {
    return _then(_AppointmentsPage(
      data: data == null ? _value.data : data as List<Appointment>,
      meta: meta == null ? _value.meta : meta as PaginationMeta,
      links: links == null ? _value.links : links as PaginationLinks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppointmentsPage implements AppointmentsPage {
  const _AppointmentsPage({
    required final List<Appointment> data,
    required this.meta,
    required this.links,
  }) : _data = data;

  factory _AppointmentsPage.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsPageFromJson(json);

  final List<Appointment> _data;
  @override
  List<Appointment> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaginationMeta meta;
  @override
  final PaginationLinks links;

  @override
  String toString() {
    return 'AppointmentsPage(data: $data, meta: $meta, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentsPage &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            other.meta == meta &&
            other.links == links);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_data),
        meta,
        links,
      );

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$AppointmentsPageImplCopyWith<_AppointmentsPage> get copyWith =>
      __$$AppointmentsPageImplCopyWithImpl<_AppointmentsPage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppointmentsPageToJson(this);
  }
}
