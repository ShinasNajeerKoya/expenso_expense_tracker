// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SplashState _$SplashStateFromJson(Map<String, dynamic> json) => _SplashState(
      error: json['error'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      targetRoute: json['targetRoute'] as String?,
    );

Map<String, dynamic> _$SplashStateToJson(_SplashState instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
      'targetRoute': instance.targetRoute,
    };
