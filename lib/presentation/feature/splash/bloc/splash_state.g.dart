// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SplashState _$SplashStateFromJson(Map<String, dynamic> json) => _SplashState(
      error: json['error'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      targetRoute: json['targetRoute'] as String?,
      splashDuration: $enumDecodeNullable(
              _$SplashDurationTypeEnumEnumMap, json['splashDuration']) ??
          SplashDurationTypeEnum.medium,
    );

Map<String, dynamic> _$SplashStateToJson(_SplashState instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
      'targetRoute': instance.targetRoute,
      'splashDuration':
          _$SplashDurationTypeEnumEnumMap[instance.splashDuration]!,
    };

const _$SplashDurationTypeEnumEnumMap = {
  SplashDurationTypeEnum.verySlow: 'verySlow',
  SplashDurationTypeEnum.slow: 'slow',
  SplashDurationTypeEnum.medium: 'medium',
  SplashDurationTypeEnum.fast: 'fast',
  SplashDurationTypeEnum.veryFast: 'veryFast',
};
