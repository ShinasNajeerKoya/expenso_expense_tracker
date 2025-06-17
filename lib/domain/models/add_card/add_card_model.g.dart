// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddCardModel _$AddCardModelFromJson(Map<String, dynamic> json) =>
    _AddCardModel(
      id: (json['id'] as num?)?.toInt(),
      cardHolderName: json['cardHolderName'] as String,
      cardNumber: json['cardNumber'] as String,
      expiryDate: json['expiryDate'] as String,
      cardType: $enumDecode(_$CardTypeEnumMap, json['cardType']),
      cardDesignType:
          $enumDecode(_$CardDesignTypeEnumMap, json['cardDesignType']),
    );

Map<String, dynamic> _$AddCardModelToJson(_AddCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardHolderName': instance.cardHolderName,
      'cardNumber': instance.cardNumber,
      'expiryDate': instance.expiryDate,
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
      'cardDesignType': _$CardDesignTypeEnumMap[instance.cardDesignType]!,
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
