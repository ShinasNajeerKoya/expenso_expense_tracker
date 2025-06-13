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
    };
