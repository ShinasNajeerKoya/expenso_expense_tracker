// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettingsState _$AppSettingsStateFromJson(Map<String, dynamic> json) =>
    _AppSettingsState(
      error: json['error'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      landingPageDisabled: json['landingPageDisabled'] as bool? ?? false,
      splashDuration: $enumDecodeNullable(
              _$SplashDurationTypeEnumEnumMap, json['splashDuration']) ??
          SplashDurationTypeEnum.medium,
    );

Map<String, dynamic> _$AppSettingsStateToJson(_AppSettingsState instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
      'landingPageDisabled': instance.landingPageDisabled,
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
