// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) =>
    _PaginationMeta(
      currentPage: (json['current_page'] as num?)?.toInt() ?? 1,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt() ?? 1,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt() ?? 0,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PaginationMetaToJson(_PaginationMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'from': instance.from,
      'last_page': instance.lastPage,
      'path': instance.path,
      'per_page': instance.perPage,
      'to': instance.to,
      'total': instance.total,
    };

_PaginationLinks _$PaginationLinksFromJson(Map<String, dynamic> json) =>
    _PaginationLinks(
      first: json['first'] as String?,
      last: json['last'] as String?,
      prev: json['prev'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$PaginationLinksToJson(_PaginationLinks instance) =>
    <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'prev': instance.prev,
      'next': instance.next,
    };
