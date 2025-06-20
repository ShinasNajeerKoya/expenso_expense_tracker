import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/add_card/add_card_model.dart';
import '../utils/card_design_type_extension.dart';
import '../utils/card_type_extensions.dart';

part 'add_card_state.freezed.dart';
part 'add_card_state.g.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const factory AddCardState({
    @Default(false) bool error,
    @Default(false) bool isLoading,

    // Form field values
    @Default('') String cardNumber,
    @Default('') String cardHolderName,
    @Default('') String expiryDate,

    // Error messages
    String? cardNumberError,
    String? cardHolderError,
    String? expiryDateError,

    @Default(CardType.masterCard) CardType selectedCardType,

    @Default(CardDesignType.card1) CardDesignType selectedDesignType,

    @Default(false) bool isFormSaved,

    final AddCardModel? editingCardModel,




  }) = _AddCardState;

  factory AddCardState.fromJson(Map<String, dynamic> json) => _$AddCardStateFromJson(json);
}
