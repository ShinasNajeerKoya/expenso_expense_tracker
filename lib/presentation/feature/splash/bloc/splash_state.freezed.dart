// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SplashState {
  bool get error;
  bool get isLoading;
  String? get targetRoute;
  SplashDurationTypeEnum get splashDuration;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SplashStateCopyWith<SplashState> get copyWith =>
      _$SplashStateCopyWithImpl<SplashState>(this as SplashState, _$identity);

  /// Serializes this SplashState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SplashState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.targetRoute, targetRoute) ||
                other.targetRoute == targetRoute) &&
            (identical(other.splashDuration, splashDuration) ||
                other.splashDuration == splashDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, isLoading, targetRoute, splashDuration);

  @override
  String toString() {
    return 'SplashState(error: $error, isLoading: $isLoading, targetRoute: $targetRoute, splashDuration: $splashDuration)';
  }
}

/// @nodoc
abstract mixin class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) _then) =
      _$SplashStateCopyWithImpl;
  @useResult
  $Res call(
      {bool error,
      bool isLoading,
      String? targetRoute,
      SplashDurationTypeEnum splashDuration});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._self, this._then);

  final SplashState _self;
  final $Res Function(SplashState) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? targetRoute = freezed,
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
      targetRoute: freezed == targetRoute
          ? _self.targetRoute
          : targetRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      splashDuration: null == splashDuration
          ? _self.splashDuration
          : splashDuration // ignore: cast_nullable_to_non_nullable
              as SplashDurationTypeEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SplashState implements SplashState {
  const _SplashState(
      {this.error = false,
      this.isLoading = false,
      this.targetRoute,
      this.splashDuration = SplashDurationTypeEnum.medium});
  factory _SplashState.fromJson(Map<String, dynamic> json) =>
      _$SplashStateFromJson(json);

  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? targetRoute;
  @override
  @JsonKey()
  final SplashDurationTypeEnum splashDuration;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SplashStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplashState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.targetRoute, targetRoute) ||
                other.targetRoute == targetRoute) &&
            (identical(other.splashDuration, splashDuration) ||
                other.splashDuration == splashDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, isLoading, targetRoute, splashDuration);

  @override
  String toString() {
    return 'SplashState(error: $error, isLoading: $isLoading, targetRoute: $targetRoute, splashDuration: $splashDuration)';
  }
}

/// @nodoc
abstract mixin class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) _then) =
      __$SplashStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool error,
      bool isLoading,
      String? targetRoute,
      SplashDurationTypeEnum splashDuration});
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(this._self, this._then);

  final _SplashState _self;
  final $Res Function(_SplashState) _then;

  /// Create a copy of SplashState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? targetRoute = freezed,
    Object? splashDuration = null,
  }) {
    return _then(_SplashState(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      targetRoute: freezed == targetRoute
          ? _self.targetRoute
          : targetRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      splashDuration: null == splashDuration
          ? _self.splashDuration
          : splashDuration // ignore: cast_nullable_to_non_nullable
              as SplashDurationTypeEnum,
    ));
  }
}

// dart format on
