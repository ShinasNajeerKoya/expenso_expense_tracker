// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ostrum_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OstrumState _$OstrumStateFromJson(Map<String, dynamic> json) => _OstrumState(
      error: json['error'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OstrumStateToJson(_OstrumState instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
      'comments': instance.comments,
    };
