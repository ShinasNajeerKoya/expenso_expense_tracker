// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnnouncementState _$AnnouncementStateFromJson(Map<String, dynamic> json) =>
    _AnnouncementState(
      error: json['error'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      announcements: (json['announcements'] as List<dynamic>?)
              ?.map(
                  (e) => AnnouncementModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AnnouncementStateToJson(_AnnouncementState instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
      'announcements': instance.announcements,
    };
