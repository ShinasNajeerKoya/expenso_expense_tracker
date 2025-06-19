// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileState _$ProfileStateFromJson(Map<String, dynamic> json) =>
    _ProfileState(
      error: json['error'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$ProfileStateToJson(_ProfileState instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
    };
