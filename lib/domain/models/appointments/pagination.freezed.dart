part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) {
  return _PaginationMeta.fromJson(json);
}

/// @nodoc
mixin _$PaginationMeta {
  int get currentPage;
  int? get from;
  int get lastPage;
  String? get path;
  int get perPage;
  int? get to;
  int get total;
  Map<String, dynamic> toJson();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationMetaCopyWith<PaginationMeta> get copyWith;
}

/// @nodoc
abstract class $PaginationMetaCopyWith<$Res> {
  factory $PaginationMetaCopyWith(
    PaginationMeta value,
    $Res Function(PaginationMeta) then,
  ) = _$PaginationMetaCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int currentPage,
    int? from,
    int lastPage,
    String? path,
    int perPage,
    int? to,
    int total,
  });
}

/// @nodoc
class _$PaginationMetaCopyWithImpl<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._value, this._then);

  final PaginationMeta _value;
  final $Res Function(PaginationMeta) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? path = freezed,
    Object? perPage = null,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == null
          ? _value.currentPage
          : currentPage as int,
      from: from == freezed ? _value.from : from as int?,
      lastPage: lastPage == null ? _value.lastPage : lastPage as int,
      path: path == freezed ? _value.path : path as String?,
      perPage: perPage == null ? _value.perPage : perPage as int,
      to: to == freezed ? _value.to : to as int?,
      total: total == null ? _value.total : total as int,
    ));
  }
}

/// @nodoc
abstract class _$$PaginationMetaImplCopyWith<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  factory _$$PaginationMetaImplCopyWith(
    _PaginationMeta value,
    $Res Function(_PaginationMeta) then,
  ) = __$$PaginationMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentPage,
    int? from,
    int lastPage,
    String? path,
    int perPage,
    int? to,
    int total,
  });
}

/// @nodoc
class __$$PaginationMetaImplCopyWithImpl<$Res>
    extends _$PaginationMetaCopyWithImpl<$Res>
    implements _$$PaginationMetaImplCopyWith<$Res> {
  __$$PaginationMetaImplCopyWithImpl(
    _PaginationMeta _value,
    $Res Function(_PaginationMeta) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? path = freezed,
    Object? perPage = null,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_PaginationMeta(
      currentPage:
          currentPage == null ? _value.currentPage : currentPage as int,
      from: from == freezed ? _value.from : from as int?,
      lastPage: lastPage == null ? _value.lastPage : lastPage as int,
      path: path == freezed ? _value.path : path as String?,
      perPage: perPage == null ? _value.perPage : perPage as int,
      to: to == freezed ? _value.to : to as int?,
      total: total == null ? _value.total : total as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(fieldRename: FieldRename.snake)
class _PaginationMeta implements PaginationMeta {
  const _PaginationMeta({
    this.currentPage = 1,
    this.from,
    this.lastPage = 1,
    this.path,
    this.perPage = 0,
    this.to,
    this.total = 0,
  });

  factory _PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);

  @override
  @JsonKey()
  final int currentPage;
  @override
  final int? from;
  @override
  @JsonKey()
  final int lastPage;
  @override
  final String? path;
  @override
  @JsonKey()
  final int perPage;
  @override
  final int? to;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'PaginationMeta(currentPage: $currentPage, from: $from, lastPage: $lastPage, path: $path, perPage: $perPage, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationMeta &&
            other.currentPage == currentPage &&
            other.from == from &&
            other.lastPage == lastPage &&
            other.path == path &&
            other.perPage == perPage &&
            other.to == to &&
            other.total == total);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        currentPage,
        from,
        lastPage,
        path,
        perPage,
        to,
        total,
      );

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$PaginationMetaImplCopyWith<_PaginationMeta> get copyWith =>
      __$$PaginationMetaImplCopyWithImpl<_PaginationMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationMetaToJson(this);
  }
}

PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) {
  return _PaginationLinks.fromJson(json);
}

/// @nodoc
mixin _$PaginationLinks {
  String? get first;
  String? get last;
  String? get prev;
  String? get next;
  Map<String, dynamic> toJson();
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationLinksCopyWith<PaginationLinks> get copyWith;
}

/// @nodoc
abstract class $PaginationLinksCopyWith<$Res> {
  factory $PaginationLinksCopyWith(
    PaginationLinks value,
    $Res Function(PaginationLinks) then,
  ) = _$PaginationLinksCopyWithImpl<$Res>;
  @useResult
  $Res call({String? first, String? last, String? prev, String? next});
}

/// @nodoc
class _$PaginationLinksCopyWithImpl<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  _$PaginationLinksCopyWithImpl(this._value, this._then);

  final PaginationLinks _value;
  final $Res Function(PaginationLinks) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      first: first == freezed ? _value.first : first as String?,
      last: last == freezed ? _value.last : last as String?,
      prev: prev == freezed ? _value.prev : prev as String?,
      next: next == freezed ? _value.next : next as String?,
    ));
  }
}

/// @nodoc
abstract class _$$PaginationLinksImplCopyWith<$Res>
    implements $PaginationLinksCopyWith<$Res> {
  factory _$$PaginationLinksImplCopyWith(
    _PaginationLinks value,
    $Res Function(_PaginationLinks) then,
  ) = __$$PaginationLinksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? first, String? last, String? prev, String? next});
}

/// @nodoc
class __$$PaginationLinksImplCopyWithImpl<$Res>
    extends _$PaginationLinksCopyWithImpl<$Res>
    implements _$$PaginationLinksImplCopyWith<$Res> {
  __$$PaginationLinksImplCopyWithImpl(
    _PaginationLinks _value,
    $Res Function(_PaginationLinks) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? last = freezed,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_PaginationLinks(
      first: first == freezed ? _value.first : first as String?,
      last: last == freezed ? _value.last : last as String?,
      prev: prev == freezed ? _value.prev : prev as String?,
      next: next == freezed ? _value.next : next as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(fieldRename: FieldRename.snake)
class _PaginationLinks implements PaginationLinks {
  const _PaginationLinks({this.first, this.last, this.prev, this.next});

  factory _PaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinksFromJson(json);

  @override
  final String? first;
  @override
  final String? last;
  @override
  final String? prev;
  @override
  final String? next;

  @override
  String toString() {
    return 'PaginationLinks(first: $first, last: $last, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationLinks &&
            other.first == first &&
            other.last == last &&
            other.prev == prev &&
            other.next == next);
  }

  @override
  int get hashCode => Object.hash(runtimeType, first, last, prev, next);

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  _$$PaginationLinksImplCopyWith<_PaginationLinks> get copyWith =>
      __$$PaginationLinksImplCopyWithImpl<_PaginationLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationLinksToJson(this);
  }
}
