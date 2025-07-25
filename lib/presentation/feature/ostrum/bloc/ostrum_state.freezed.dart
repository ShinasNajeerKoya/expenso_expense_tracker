// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ostrum_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OstrumState {
  bool get error;
  bool get isLoading;

  /// Create a copy of OstrumState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OstrumStateCopyWith<OstrumState> get copyWith =>
      _$OstrumStateCopyWithImpl<OstrumState>(this as OstrumState, _$identity);

  /// Serializes this OstrumState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OstrumState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading);

  @override
  String toString() {
    return 'OstrumState(error: $error, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $OstrumStateCopyWith<$Res> {
  factory $OstrumStateCopyWith(
          OstrumState value, $Res Function(OstrumState) _then) =
      _$OstrumStateCopyWithImpl;
  @useResult
  $Res call({bool error, bool isLoading});
}

/// @nodoc
class _$OstrumStateCopyWithImpl<$Res> implements $OstrumStateCopyWith<$Res> {
  _$OstrumStateCopyWithImpl(this._self, this._then);

  final OstrumState _self;
  final $Res Function(OstrumState) _then;

  /// Create a copy of OstrumState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OstrumState implements OstrumState {
  const _OstrumState({this.error = false, this.isLoading = false});
  factory _OstrumState.fromJson(Map<String, dynamic> json) =>
      _$OstrumStateFromJson(json);

  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool isLoading;

  /// Create a copy of OstrumState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OstrumStateCopyWith<_OstrumState> get copyWith =>
      __$OstrumStateCopyWithImpl<_OstrumState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OstrumStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OstrumState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading);

  @override
  String toString() {
    return 'OstrumState(error: $error, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$OstrumStateCopyWith<$Res>
    implements $OstrumStateCopyWith<$Res> {
  factory _$OstrumStateCopyWith(
          _OstrumState value, $Res Function(_OstrumState) _then) =
      __$OstrumStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool error, bool isLoading});
}

/// @nodoc
class __$OstrumStateCopyWithImpl<$Res> implements _$OstrumStateCopyWith<$Res> {
  __$OstrumStateCopyWithImpl(this._self, this._then);

  final _OstrumState _self;
  final $Res Function(_OstrumState) _then;

  /// Create a copy of OstrumState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_OstrumState(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
