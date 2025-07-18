// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnnouncementModel {
  int get id;
  String get title;
  @JsonKey(name: 'sub_title')
  String get subtitle;
  @JsonKey(name: 'image_url')
  String get imageUrl;
  DateTime get datetime;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of AnnouncementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnnouncementModelCopyWith<AnnouncementModel> get copyWith =>
      _$AnnouncementModelCopyWithImpl<AnnouncementModel>(
          this as AnnouncementModel, _$identity);

  /// Serializes this AnnouncementModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnnouncementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, subtitle, imageUrl, datetime, createdAt);

  @override
  String toString() {
    return 'AnnouncementModel(id: $id, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, datetime: $datetime, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $AnnouncementModelCopyWith<$Res> {
  factory $AnnouncementModelCopyWith(
          AnnouncementModel value, $Res Function(AnnouncementModel) _then) =
      _$AnnouncementModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'sub_title') String subtitle,
      @JsonKey(name: 'image_url') String imageUrl,
      DateTime datetime,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$AnnouncementModelCopyWithImpl<$Res>
    implements $AnnouncementModelCopyWith<$Res> {
  _$AnnouncementModelCopyWithImpl(this._self, this._then);

  final AnnouncementModel _self;
  final $Res Function(AnnouncementModel) _then;

  /// Create a copy of AnnouncementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
    Object? datetime = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _self.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AnnouncementModel implements AnnouncementModel {
  const _AnnouncementModel(
      {required this.id,
      required this.title,
      @JsonKey(name: 'sub_title') required this.subtitle,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.datetime,
      @JsonKey(name: 'created_at') required this.createdAt});
  factory _AnnouncementModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'sub_title')
  final String subtitle;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final DateTime datetime;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  /// Create a copy of AnnouncementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnnouncementModelCopyWith<_AnnouncementModel> get copyWith =>
      __$AnnouncementModelCopyWithImpl<_AnnouncementModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnnouncementModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnnouncementModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, subtitle, imageUrl, datetime, createdAt);

  @override
  String toString() {
    return 'AnnouncementModel(id: $id, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, datetime: $datetime, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$AnnouncementModelCopyWith<$Res>
    implements $AnnouncementModelCopyWith<$Res> {
  factory _$AnnouncementModelCopyWith(
          _AnnouncementModel value, $Res Function(_AnnouncementModel) _then) =
      __$AnnouncementModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'sub_title') String subtitle,
      @JsonKey(name: 'image_url') String imageUrl,
      DateTime datetime,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$AnnouncementModelCopyWithImpl<$Res>
    implements _$AnnouncementModelCopyWith<$Res> {
  __$AnnouncementModelCopyWithImpl(this._self, this._then);

  final _AnnouncementModel _self;
  final $Res Function(_AnnouncementModel) _then;

  /// Create a copy of AnnouncementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? imageUrl = null,
    Object? datetime = null,
    Object? createdAt = null,
  }) {
    return _then(_AnnouncementModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _self.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
