part of 'availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
mixin _$Availability {
  String get id;
  DateTime get startAt;
  DateTime get endAt;
  bool get isAvailable;
  Map<String, dynamic> toJson();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailabilityCopyWith<Availability> get copyWith;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
    Availability value,
    $Res Function(Availability) then,
  ) = _$AvailabilityCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String id,
    DateTime startAt,
    DateTime endAt,
    bool isAvailable,
  });
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res>
    implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  final Availability _value;
  final $Res Function(Availability) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      id: id == null ? _value.id : id as String,
      startAt: startAt == null ? _value.startAt : startAt as DateTime,
      endAt: endAt == null ? _value.endAt : endAt as DateTime,
      isAvailable:
          isAvailable == null ? _value.isAvailable : isAvailable as bool,
    ));
  }
}

/// @nodoc
abstract class _$$AvailabilityImplCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$$AvailabilityImplCopyWith(
    _Availability value,
    $Res Function(_Availability) then,
  ) = __$$AvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    DateTime startAt,
    DateTime endAt,
    bool isAvailable,
  });
}

/// @nodoc
class __$$AvailabilityImplCopyWithImpl<$Res>
    extends _$AvailabilityCopyWithImpl<$Res>
    implements _$$AvailabilityImplCopyWith<$Res> {
  __$$AvailabilityImplCopyWithImpl(
    _Availability _value,
    $Res Function(_Availability) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? isAvailable = null,
  }) {
    return _then(_Availability(
      id: id == null ? _value.id : id as String,
      startAt: startAt == null ? _value.startAt : startAt as DateTime,
      endAt: endAt == null ? _value.endAt : endAt as DateTime,
      isAvailable:
          isAvailable == null ? _value.isAvailable : isAvailable as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(fieldRename: FieldRename.snake)
class _Availability implements Availability {
  const _Availability({
    required this.id,
    required this.startAt,
    required this.endAt,
    this.isAvailable = false,
  });

  factory _Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  @override
  final String id;
  @override
  final DateTime startAt;
  @override
  final DateTime endAt;
  @override
  @JsonKey()
  final bool isAvailable;

  @override
  String toString() {
    return 'Availability(id: $id, startAt: $startAt, endAt: $endAt, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Availability &&
            other.id == id &&
            other.startAt == startAt &&
            other.endAt == endAt &&
            other.isAvailable == isAvailable);
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, startAt, endAt, isAvailable);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$AvailabilityImplCopyWith<_Availability> get copyWith =>
      __$$AvailabilityImplCopyWithImpl<_Availability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AvailabilityToJson(this);
  }
}
