// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddCardState _$AddCardStateFromJson(Map<String, dynamic> json) =>
    _AddCardState(
      error: json['error'] as bool? ?? false,
      isLoading: json['isLoading'] as bool? ?? false,
      cardNumber: json['cardNumber'] as String? ?? '',
      cardHolderName: json['cardHolderName'] as String? ?? '',
      expiryDate: json['expiryDate'] as String? ?? '',
      cardNumberError: json['cardNumberError'] as String?,
      cardHolderError: json['cardHolderError'] as String?,
      expiryDateError: json['expiryDateError'] as String?,
      selectedCardType:
          $enumDecodeNullable(_$CardTypeEnumMap, json['selectedCardType']) ??
              CardType.masterCard,
      selectedDesignType: $enumDecodeNullable(
              _$CardDesignTypeEnumMap, json['selectedDesignType']) ??
          CardDesignType.card1,
      isFormSaved: json['isFormSaved'] as bool? ?? false,
      editingCardModel: json['editingCardModel'] == null
          ? null
          : AddCardModel.fromJson(
              json['editingCardModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCardStateToJson(_AddCardState instance) =>
    <String, dynamic>{
      'error': instance.error,
      'isLoading': instance.isLoading,
      'cardNumber': instance.cardNumber,
      'cardHolderName': instance.cardHolderName,
      'expiryDate': instance.expiryDate,
      'cardNumberError': instance.cardNumberError,
      'cardHolderError': instance.cardHolderError,
      'expiryDateError': instance.expiryDateError,
      'selectedCardType': _$CardTypeEnumMap[instance.selectedCardType]!,
      'selectedDesignType':
          _$CardDesignTypeEnumMap[instance.selectedDesignType]!,
      'isFormSaved': instance.isFormSaved,
      'editingCardModel': instance.editingCardModel,
    };

const _$CardTypeEnumMap = {
  CardType.masterCard: 'masterCard',
  CardType.visa: 'visa',
  CardType.ruPay: 'ruPay',
};

const _$CardDesignTypeEnumMap = {
  CardDesignType.card1: 'card1',
  CardDesignType.card2: 'card2',
  CardDesignType.card3: 'card3',
  CardDesignType.card4: 'card4',
  CardDesignType.card5: 'card5',
  CardDesignType.card6: 'card6',
  CardDesignType.card7: 'card7',
  CardDesignType.card8: 'card8',
  CardDesignType.card9: 'card9',
};
