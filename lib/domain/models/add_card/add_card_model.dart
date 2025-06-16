import 'package:expenso_expense_tracker/presentation/add_card/utils/card_type_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_model.freezed.dart';
part 'add_card_model.g.dart';

@freezed
abstract class AddCardModel with _$AddCardModel {
  const factory AddCardModel({
    int? id,
    required String cardHolderName,
    required String cardNumber,
    required String expiryDate,
    required CardType cardType,
  }) = _AddCardModel;

  factory AddCardModel.fromJson(Map<String, dynamic> json) => _$AddCardModelFromJson(json);
}
