// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnnouncementState {
  bool get error;
  bool get isLoading;
  List<AnnouncementModel> get announcements;

  /// Create a copy of AnnouncementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnnouncementStateCopyWith<AnnouncementState> get copyWith =>
      _$AnnouncementStateCopyWithImpl<AnnouncementState>(
          this as AnnouncementState, _$identity);

  /// Serializes this AnnouncementState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnnouncementState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other.announcements, announcements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading,
      const DeepCollectionEquality().hash(announcements));

  @override
  String toString() {
    return 'AnnouncementState(error: $error, isLoading: $isLoading, announcements: $announcements)';
  }
}

/// @nodoc
abstract mixin class $AnnouncementStateCopyWith<$Res> {
  factory $AnnouncementStateCopyWith(
          AnnouncementState value, $Res Function(AnnouncementState) _then) =
      _$AnnouncementStateCopyWithImpl;
  @useResult
  $Res call(
      {bool error, bool isLoading, List<AnnouncementModel> announcements});
}

/// @nodoc
class _$AnnouncementStateCopyWithImpl<$Res>
    implements $AnnouncementStateCopyWith<$Res> {
  _$AnnouncementStateCopyWithImpl(this._self, this._then);

  final AnnouncementState _self;
  final $Res Function(AnnouncementState) _then;

  /// Create a copy of AnnouncementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? announcements = null,
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
      announcements: null == announcements
          ? _self.announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AnnouncementState implements AnnouncementState {
  const _AnnouncementState(
      {this.error = false,
      this.isLoading = false,
      final List<AnnouncementModel> announcements = const []})
      : _announcements = announcements;
  factory _AnnouncementState.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementStateFromJson(json);

  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool isLoading;
  final List<AnnouncementModel> _announcements;
  @override
  @JsonKey()
  List<AnnouncementModel> get announcements {
    if (_announcements is EqualUnmodifiableListView) return _announcements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_announcements);
  }

  /// Create a copy of AnnouncementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnnouncementStateCopyWith<_AnnouncementState> get copyWith =>
      __$AnnouncementStateCopyWithImpl<_AnnouncementState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnnouncementStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnnouncementState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._announcements, _announcements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading,
      const DeepCollectionEquality().hash(_announcements));

  @override
  String toString() {
    return 'AnnouncementState(error: $error, isLoading: $isLoading, announcements: $announcements)';
  }
}

/// @nodoc
abstract mixin class _$AnnouncementStateCopyWith<$Res>
    implements $AnnouncementStateCopyWith<$Res> {
  factory _$AnnouncementStateCopyWith(
          _AnnouncementState value, $Res Function(_AnnouncementState) _then) =
      __$AnnouncementStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool error, bool isLoading, List<AnnouncementModel> announcements});
}

/// @nodoc
class __$AnnouncementStateCopyWithImpl<$Res>
    implements _$AnnouncementStateCopyWith<$Res> {
  __$AnnouncementStateCopyWithImpl(this._self, this._then);

  final _AnnouncementState _self;
  final $Res Function(_AnnouncementState) _then;

  /// Create a copy of AnnouncementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? announcements = null,
  }) {
    return _then(_AnnouncementState(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      announcements: null == announcements
          ? _self._announcements
          : announcements // ignore: cast_nullable_to_non_nullable
              as List<AnnouncementModel>,
    ));
  }
}

// dart format on
