// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrencyModel {
  String get code; // ISO currency code (e.g., "USD")
  String get symbol; // Currency symbol (e.g., "$")
  String get name;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      _$CurrencyModelCopyWithImpl<CurrencyModel>(
          this as CurrencyModel, _$identity);

  /// Serializes this CurrencyModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CurrencyModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, symbol, name);

  @override
  String toString() {
    return 'CurrencyModel(code: $code, symbol: $symbol, name: $name)';
  }
}

/// @nodoc
abstract mixin class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) _then) =
      _$CurrencyModelCopyWithImpl;
  @useResult
  $Res call({String code, String symbol, String name});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._self, this._then);

  final CurrencyModel _self;
  final $Res Function(CurrencyModel) _then;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CurrencyModel implements CurrencyModel {
  const _CurrencyModel(
      {required this.code, required this.symbol, required this.name});
  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);

  @override
  final String code;
// ISO currency code (e.g., "USD")
  @override
  final String symbol;
// Currency symbol (e.g., "$")
  @override
  final String name;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CurrencyModelCopyWith<_CurrencyModel> get copyWith =>
      __$CurrencyModelCopyWithImpl<_CurrencyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CurrencyModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrencyModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, symbol, name);

  @override
  String toString() {
    return 'CurrencyModel(code: $code, symbol: $symbol, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$CurrencyModelCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$CurrencyModelCopyWith(
          _CurrencyModel value, $Res Function(_CurrencyModel) _then) =
      __$CurrencyModelCopyWithImpl;
  @override
  @useResult
  $Res call({String code, String symbol, String name});
}

/// @nodoc
class __$CurrencyModelCopyWithImpl<$Res>
    implements _$CurrencyModelCopyWith<$Res> {
  __$CurrencyModelCopyWithImpl(this._self, this._then);

  final _CurrencyModel _self;
  final $Res Function(_CurrencyModel) _then;

  /// Create a copy of CurrencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? name = null,
  }) {
    return _then(_CurrencyModel(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
