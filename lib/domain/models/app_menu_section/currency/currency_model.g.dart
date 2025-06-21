// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) =>
    _CurrencyModel(
      code: json['code'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CurrencyModelToJson(_CurrencyModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'symbol': instance.symbol,
      'name': instance.name,
    };
