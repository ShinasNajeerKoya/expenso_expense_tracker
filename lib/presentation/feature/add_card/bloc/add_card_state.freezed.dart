// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddCardState {
  bool get error;
  bool get isLoading; // Form field values
  String get cardNumber;
  String get cardHolderName;
  String get expiryDate; // Error messages
  String? get cardNumberError;
  String? get cardHolderError;
  String? get expiryDateError;
  CardType get selectedCardType;
  CardDesignType get selectedDesignType;
  bool get isFormSaved;
  AddCardModel? get editingCardModel;

  /// Create a copy of AddCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddCardStateCopyWith<AddCardState> get copyWith =>
      _$AddCardStateCopyWithImpl<AddCardState>(
          this as AddCardState, _$identity);

  /// Serializes this AddCardState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddCardState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cardNumberError, cardNumberError) ||
                other.cardNumberError == cardNumberError) &&
            (identical(other.cardHolderError, cardHolderError) ||
                other.cardHolderError == cardHolderError) &&
            (identical(other.expiryDateError, expiryDateError) ||
                other.expiryDateError == expiryDateError) &&
            (identical(other.selectedCardType, selectedCardType) ||
                other.selectedCardType == selectedCardType) &&
            (identical(other.selectedDesignType, selectedDesignType) ||
                other.selectedDesignType == selectedDesignType) &&
            (identical(other.isFormSaved, isFormSaved) ||
                other.isFormSaved == isFormSaved) &&
            (identical(other.editingCardModel, editingCardModel) ||
                other.editingCardModel == editingCardModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      isLoading,
      cardNumber,
      cardHolderName,
      expiryDate,
      cardNumberError,
      cardHolderError,
      expiryDateError,
      selectedCardType,
      selectedDesignType,
      isFormSaved,
      editingCardModel);

  @override
  String toString() {
    return 'AddCardState(error: $error, isLoading: $isLoading, cardNumber: $cardNumber, cardHolderName: $cardHolderName, expiryDate: $expiryDate, cardNumberError: $cardNumberError, cardHolderError: $cardHolderError, expiryDateError: $expiryDateError, selectedCardType: $selectedCardType, selectedDesignType: $selectedDesignType, isFormSaved: $isFormSaved, editingCardModel: $editingCardModel)';
  }
}

/// @nodoc
abstract mixin class $AddCardStateCopyWith<$Res> {
  factory $AddCardStateCopyWith(
          AddCardState value, $Res Function(AddCardState) _then) =
      _$AddCardStateCopyWithImpl;
  @useResult
  $Res call(
      {bool error,
      bool isLoading,
      String cardNumber,
      String cardHolderName,
      String expiryDate,
      String? cardNumberError,
      String? cardHolderError,
      String? expiryDateError,
      CardType selectedCardType,
      CardDesignType selectedDesignType,
      bool isFormSaved,
      AddCardModel? editingCardModel});

  $AddCardModelCopyWith<$Res>? get editingCardModel;
}

/// @nodoc
class _$AddCardStateCopyWithImpl<$Res> implements $AddCardStateCopyWith<$Res> {
  _$AddCardStateCopyWithImpl(this._self, this._then);

  final AddCardState _self;
  final $Res Function(AddCardState) _then;

  /// Create a copy of AddCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? expiryDate = null,
    Object? cardNumberError = freezed,
    Object? cardHolderError = freezed,
    Object? expiryDateError = freezed,
    Object? selectedCardType = null,
    Object? selectedDesignType = null,
    Object? isFormSaved = null,
    Object? editingCardModel = freezed,
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
      cardNumber: null == cardNumber
          ? _self.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _self.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumberError: freezed == cardNumberError
          ? _self.cardNumberError
          : cardNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
      cardHolderError: freezed == cardHolderError
          ? _self.cardHolderError
          : cardHolderError // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDateError: freezed == expiryDateError
          ? _self.expiryDateError
          : expiryDateError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCardType: null == selectedCardType
          ? _self.selectedCardType
          : selectedCardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      selectedDesignType: null == selectedDesignType
          ? _self.selectedDesignType
          : selectedDesignType // ignore: cast_nullable_to_non_nullable
              as CardDesignType,
      isFormSaved: null == isFormSaved
          ? _self.isFormSaved
          : isFormSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      editingCardModel: freezed == editingCardModel
          ? _self.editingCardModel
          : editingCardModel // ignore: cast_nullable_to_non_nullable
              as AddCardModel?,
    ));
  }

  /// Create a copy of AddCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddCardModelCopyWith<$Res>? get editingCardModel {
    if (_self.editingCardModel == null) {
      return null;
    }

    return $AddCardModelCopyWith<$Res>(_self.editingCardModel!, (value) {
      return _then(_self.copyWith(editingCardModel: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _AddCardState implements AddCardState {
  const _AddCardState(
      {this.error = false,
      this.isLoading = false,
      this.cardNumber = '',
      this.cardHolderName = '',
      this.expiryDate = '',
      this.cardNumberError,
      this.cardHolderError,
      this.expiryDateError,
      this.selectedCardType = CardType.masterCard,
      this.selectedDesignType = CardDesignType.card1,
      this.isFormSaved = false,
      this.editingCardModel});
  factory _AddCardState.fromJson(Map<String, dynamic> json) =>
      _$AddCardStateFromJson(json);

  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool isLoading;
// Form field values
  @override
  @JsonKey()
  final String cardNumber;
  @override
  @JsonKey()
  final String cardHolderName;
  @override
  @JsonKey()
  final String expiryDate;
// Error messages
  @override
  final String? cardNumberError;
  @override
  final String? cardHolderError;
  @override
  final String? expiryDateError;
  @override
  @JsonKey()
  final CardType selectedCardType;
  @override
  @JsonKey()
  final CardDesignType selectedDesignType;
  @override
  @JsonKey()
  final bool isFormSaved;
  @override
  final AddCardModel? editingCardModel;

  /// Create a copy of AddCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddCardStateCopyWith<_AddCardState> get copyWith =>
      __$AddCardStateCopyWithImpl<_AddCardState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AddCardStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddCardState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.cardNumberError, cardNumberError) ||
                other.cardNumberError == cardNumberError) &&
            (identical(other.cardHolderError, cardHolderError) ||
                other.cardHolderError == cardHolderError) &&
            (identical(other.expiryDateError, expiryDateError) ||
                other.expiryDateError == expiryDateError) &&
            (identical(other.selectedCardType, selectedCardType) ||
                other.selectedCardType == selectedCardType) &&
            (identical(other.selectedDesignType, selectedDesignType) ||
                other.selectedDesignType == selectedDesignType) &&
            (identical(other.isFormSaved, isFormSaved) ||
                other.isFormSaved == isFormSaved) &&
            (identical(other.editingCardModel, editingCardModel) ||
                other.editingCardModel == editingCardModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      isLoading,
      cardNumber,
      cardHolderName,
      expiryDate,
      cardNumberError,
      cardHolderError,
      expiryDateError,
      selectedCardType,
      selectedDesignType,
      isFormSaved,
      editingCardModel);

  @override
  String toString() {
    return 'AddCardState(error: $error, isLoading: $isLoading, cardNumber: $cardNumber, cardHolderName: $cardHolderName, expiryDate: $expiryDate, cardNumberError: $cardNumberError, cardHolderError: $cardHolderError, expiryDateError: $expiryDateError, selectedCardType: $selectedCardType, selectedDesignType: $selectedDesignType, isFormSaved: $isFormSaved, editingCardModel: $editingCardModel)';
  }
}

/// @nodoc
abstract mixin class _$AddCardStateCopyWith<$Res>
    implements $AddCardStateCopyWith<$Res> {
  factory _$AddCardStateCopyWith(
          _AddCardState value, $Res Function(_AddCardState) _then) =
      __$AddCardStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool error,
      bool isLoading,
      String cardNumber,
      String cardHolderName,
      String expiryDate,
      String? cardNumberError,
      String? cardHolderError,
      String? expiryDateError,
      CardType selectedCardType,
      CardDesignType selectedDesignType,
      bool isFormSaved,
      AddCardModel? editingCardModel});

  @override
  $AddCardModelCopyWith<$Res>? get editingCardModel;
}

/// @nodoc
class __$AddCardStateCopyWithImpl<$Res>
    implements _$AddCardStateCopyWith<$Res> {
  __$AddCardStateCopyWithImpl(this._self, this._then);

  final _AddCardState _self;
  final $Res Function(_AddCardState) _then;

  /// Create a copy of AddCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? cardNumber = null,
    Object? cardHolderName = null,
    Object? expiryDate = null,
    Object? cardNumberError = freezed,
    Object? cardHolderError = freezed,
    Object? expiryDateError = freezed,
    Object? selectedCardType = null,
    Object? selectedDesignType = null,
    Object? isFormSaved = null,
    Object? editingCardModel = freezed,
  }) {
    return _then(_AddCardState(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cardNumber: null == cardNumber
          ? _self.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _self.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _self.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumberError: freezed == cardNumberError
          ? _self.cardNumberError
          : cardNumberError // ignore: cast_nullable_to_non_nullable
              as String?,
      cardHolderError: freezed == cardHolderError
          ? _self.cardHolderError
          : cardHolderError // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDateError: freezed == expiryDateError
          ? _self.expiryDateError
          : expiryDateError // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCardType: null == selectedCardType
          ? _self.selectedCardType
          : selectedCardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      selectedDesignType: null == selectedDesignType
          ? _self.selectedDesignType
          : selectedDesignType // ignore: cast_nullable_to_non_nullable
              as CardDesignType,
      isFormSaved: null == isFormSaved
          ? _self.isFormSaved
          : isFormSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      editingCardModel: freezed == editingCardModel
          ? _self.editingCardModel
          : editingCardModel // ignore: cast_nullable_to_non_nullable
              as AddCardModel?,
    ));
  }

  /// Create a copy of AddCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddCardModelCopyWith<$Res>? get editingCardModel {
    if (_self.editingCardModel == null) {
      return null;
    }

    return $AddCardModelCopyWith<$Res>(_self.editingCardModel!, (value) {
      return _then(_self.copyWith(editingCardModel: value));
    });
  }
}

// dart format on
