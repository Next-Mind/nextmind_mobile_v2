// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasePostSummary _$BasePostSummaryFromJson(Map<String, dynamic> json) =>
    _BasePostSummary(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['image_url'] as String,
      category: PostCategory.fromJson(json['category'] as Map<String, dynamic>),
      author: PostAuthor.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BasePostSummaryToJson(_BasePostSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'category': instance.category,
      'author': instance.author,
    };
