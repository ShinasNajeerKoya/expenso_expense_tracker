import 'package:expenso_expense_tracker/presentation/add_card/utils/card_type_extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/add_card/utils/card_design_type_extension.dart';

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
    required CardDesignType cardDesignType,

  }) = _AddCardModel;

  factory AddCardModel.fromJson(Map<String, dynamic> json) => _$AddCardModelFromJson(json);
}
