// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppSettingsState {
  bool get error;
  bool get isLoading;
  bool get landingPageDisabled;
  SplashDurationTypeEnum get splashDuration;

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppSettingsStateCopyWith<AppSettingsState> get copyWith =>
      _$AppSettingsStateCopyWithImpl<AppSettingsState>(
          this as AppSettingsState, _$identity);

  /// Serializes this AppSettingsState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppSettingsState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.landingPageDisabled, landingPageDisabled) ||
                other.landingPageDisabled == landingPageDisabled) &&
            (identical(other.splashDuration, splashDuration) ||
                other.splashDuration == splashDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, isLoading, landingPageDisabled, splashDuration);

  @override
  String toString() {
    return 'AppSettingsState(error: $error, isLoading: $isLoading, landingPageDisabled: $landingPageDisabled, splashDuration: $splashDuration)';
  }
}

/// @nodoc
abstract mixin class $AppSettingsStateCopyWith<$Res> {
  factory $AppSettingsStateCopyWith(
          AppSettingsState value, $Res Function(AppSettingsState) _then) =
      _$AppSettingsStateCopyWithImpl;
  @useResult
  $Res call(
      {bool error,
      bool isLoading,
      bool landingPageDisabled,
      SplashDurationTypeEnum splashDuration});
}

/// @nodoc
class _$AppSettingsStateCopyWithImpl<$Res>
    implements $AppSettingsStateCopyWith<$Res> {
  _$AppSettingsStateCopyWithImpl(this._self, this._then);

  final AppSettingsState _self;
  final $Res Function(AppSettingsState) _then;

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? landingPageDisabled = null,
    Object? splashDuration = null,
  }) {
    return _then(_self.copyWith(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      landingPageDisabled: null == landingPageDisabled
          ? _self.landingPageDisabled
          : landingPageDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      splashDuration: null == splashDuration
          ? _self.splashDuration
          : splashDuration // ignore: cast_nullable_to_non_nullable
              as SplashDurationTypeEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppSettingsState implements AppSettingsState {
  const _AppSettingsState(
      {this.error = false,
      this.isLoading = false,
      this.landingPageDisabled = false,
      this.splashDuration = SplashDurationTypeEnum.medium});
  factory _AppSettingsState.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsStateFromJson(json);

  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool landingPageDisabled;
  @override
  @JsonKey()
  final SplashDurationTypeEnum splashDuration;

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppSettingsStateCopyWith<_AppSettingsState> get copyWith =>
      __$AppSettingsStateCopyWithImpl<_AppSettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppSettingsStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppSettingsState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.landingPageDisabled, landingPageDisabled) ||
                other.landingPageDisabled == landingPageDisabled) &&
            (identical(other.splashDuration, splashDuration) ||
                other.splashDuration == splashDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, isLoading, landingPageDisabled, splashDuration);

  @override
  String toString() {
    return 'AppSettingsState(error: $error, isLoading: $isLoading, landingPageDisabled: $landingPageDisabled, splashDuration: $splashDuration)';
  }
}

/// @nodoc
abstract mixin class _$AppSettingsStateCopyWith<$Res>
    implements $AppSettingsStateCopyWith<$Res> {
  factory _$AppSettingsStateCopyWith(
          _AppSettingsState value, $Res Function(_AppSettingsState) _then) =
      __$AppSettingsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool error,
      bool isLoading,
      bool landingPageDisabled,
      SplashDurationTypeEnum splashDuration});
}

/// @nodoc
class __$AppSettingsStateCopyWithImpl<$Res>
    implements _$AppSettingsStateCopyWith<$Res> {
  __$AppSettingsStateCopyWithImpl(this._self, this._then);

  final _AppSettingsState _self;
  final $Res Function(_AppSettingsState) _then;

  /// Create a copy of AppSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? landingPageDisabled = null,
    Object? splashDuration = null,
  }) {
    return _then(_AppSettingsState(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      landingPageDisabled: null == landingPageDisabled
          ? _self.landingPageDisabled
          : landingPageDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      splashDuration: null == splashDuration
          ? _self.splashDuration
          : splashDuration // ignore: cast_nullable_to_non_nullable
              as SplashDurationTypeEnum,
    ));
  }
}

// dart format on
