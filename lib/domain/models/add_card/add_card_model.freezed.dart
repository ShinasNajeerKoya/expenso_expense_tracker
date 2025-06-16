// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddCardModel {
  int? get id;
  String get cardHolderName;
  String get cardNumber;
  String get expiryDate;
  CardType get cardType;

  /// Create a copy of AddCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddCardModelCopyWith<AddCardModel> get copyWith =>
      _$AddCardModelCopyWithImpl<AddCardModel>(
          this as AddCardModel, _$identity);

  /// Serializes this AddCardModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cardHolderName, cardNumber, expiryDate, cardType);

  @override
  String toString() {
    return 'AddCardModel(id: $id, cardHolderName: $cardHolderName, cardNumber: $cardNumber, expiryDate: $expiryDate, cardType: $cardType)';
  }
}

/// @nodoc
abstract mixin class $AddCardModelCopyWith<$Res> {
  factory $AddCardModelCopyWith(
          AddCardModel value, $Res Function(AddCardModel) _then) =
      _$AddCardModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String cardHolderName,
      String cardNumber,
      String expiryDate,
      CardType cardType});
}

/// @nodoc
class _$AddCardModelCopyWithImpl<$Res> implements $AddCardModelCopyWith<$Res> {
  _$AddCardModelCopyWithImpl(this._self, this._then);

  final AddCardModel _self;
  final $Res Function(AddCardModel) _then;

  /// Create a copy of AddCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cardHolderName = null,
    Object? cardNumber = null,
    Object? expiryDate = null,
    Object? cardType = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cardHolderName: null == cardHolderName
          ? _self.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _self.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _self.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AddCardModel implements AddCardModel {
  const _AddCardModel(
      {this.id,
      required this.cardHolderName,
      required this.cardNumber,
      required this.expiryDate,
      required this.cardType});
  factory _AddCardModel.fromJson(Map<String, dynamic> json) =>
      _$AddCardModelFromJson(json);

  @override
  final int? id;
  @override
  final String cardHolderName;
  @override
  final String cardNumber;
  @override
  final String expiryDate;
  @override
  final CardType cardType;

  /// Create a copy of AddCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddCardModelCopyWith<_AddCardModel> get copyWith =>
      __$AddCardModelCopyWithImpl<_AddCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddCardModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cardHolderName, cardNumber, expiryDate, cardType);

  @override
  String toString() {
    return 'AddCardModel(id: $id, cardHolderName: $cardHolderName, cardNumber: $cardNumber, expiryDate: $expiryDate, cardType: $cardType)';
  }
}

/// @nodoc
abstract mixin class _$AddCardModelCopyWith<$Res>
    implements $AddCardModelCopyWith<$Res> {
  factory _$AddCardModelCopyWith(
          _AddCardModel value, $Res Function(_AddCardModel) _then) =
      __$AddCardModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String cardHolderName,
      String cardNumber,
      String expiryDate,
      CardType cardType});
}

/// @nodoc
class __$AddCardModelCopyWithImpl<$Res>
    implements _$AddCardModelCopyWith<$Res> {
  __$AddCardModelCopyWithImpl(this._self, this._then);

  final _AddCardModel _self;
  final $Res Function(_AddCardModel) _then;

  /// Create a copy of AddCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? cardHolderName = null,
    Object? cardNumber = null,
    Object? expiryDate = null,
    Object? cardType = null,
  }) {
    return _then(_AddCardModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cardHolderName: null == cardHolderName
          ? _self.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _self.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _self.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
    ));
  }
}

// dart format on
