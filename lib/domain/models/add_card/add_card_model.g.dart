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
    );

Map<String, dynamic> _$AddCardModelToJson(_AddCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardHolderName': instance.cardHolderName,
      'cardNumber': instance.cardNumber,
      'expiryDate': instance.expiryDate,
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
    };

const _$CardTypeEnumMap = {
  CardType.masterCard: 'masterCard',
  CardType.visa: 'visa',
  CardType.ruPay: 'ruPay',
};
