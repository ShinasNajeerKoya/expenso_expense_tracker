// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnnouncementModel _$AnnouncementModelFromJson(Map<String, dynamic> json) =>
    _AnnouncementModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      subtitle: json['sub_title'] as String,
      imageUrl: json['image_url'] as String,
      datetime: DateTime.parse(json['datetime'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$AnnouncementModelToJson(_AnnouncementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sub_title': instance.subtitle,
      'image_url': instance.imageUrl,
      'datetime': instance.datetime.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };
