import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
abstract class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    required String code,     // ISO currency code (e.g., "USD")
    required String symbol,   // Currency symbol (e.g., "$")
    required String name,     // Full name (e.g., "Dollar")
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) => _$CurrencyModelFromJson(json);
}
