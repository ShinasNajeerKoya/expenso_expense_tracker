import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/add_card/add_card_model.dart';
import '../../../domain/repositories/add_card/add_card_repository.dart';
import '../utils/card_design_type_extension.dart';
import '../utils/card_type_extensions.dart';
import 'add_card_state.dart';

class AddCardBloc extends Cubit<AddCardState> {
  AddCardBloc(this._repo) : super(const AddCardState());

  final AddCardRepository _repo;

  /// add you business logic here

  void onCardNumberChanged(String value) {
    emit(state.copyWith(cardNumber: value, cardNumberError: null));
  }

  void onCardHolderChanged(String value) {
    emit(state.copyWith(cardHolderName: value, cardHolderError: null));
  }

  void onExpiryDateChanged(String value) {
    emit(state.copyWith(expiryDate: value, expiryDateError: null));
  }

  void onCardTypeChanged(CardType type) {
    emit(state.copyWith(selectedCardType: type));
  }

  void onCardDesignChanged(CardDesignType designType) {
    emit(state.copyWith(selectedDesignType: designType));
  }

  void validateAndSubmitCardDetails() {
    final cardType = state.selectedCardType;
    final cardNumber = state.cardNumber;
    final cardHolderName = state.cardHolderName;
    final expiryDate = state.expiryDate;
    final cardDesignType = state.selectedDesignType;

    String? cardNumberError;
    String? nameError;
    String? expiryError;

    bool hasError = false;

    // Validation checks
    final sanitizedCardNumber = cardNumber.trim();

    if (!RegExp(r'^\d+$').hasMatch(sanitizedCardNumber)) {
      cardNumberError = 'Only digits allowed.';
      hasError = true;
    } else if (sanitizedCardNumber.length != 4) {
      cardNumberError = 'Incomplete card number.';
      hasError = true;
    }

    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(cardHolderName)) {
      nameError = 'Only alphabets allowed.';
      hasError = true;
    }

    if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(expiryDate)) {
      expiryError = 'Format must be MM/YY';
      hasError = true;
    }

    // Emit state once with all errors (or nulls)
    emit(state.copyWith(
      cardNumberError: cardNumberError,
      cardHolderError: nameError,
      expiryDateError: expiryError,
    ));

    // Proceed only if there's no error
    if (!hasError) {
      log('card details : $cardType, $cardNumber, $cardHolderName, $expiryDate');

      _repo.insertCard(
        AddCardModel(
          cardHolderName: cardHolderName.trim(),
          cardNumber: cardNumber.trim(),
          expiryDate: expiryDate.trim(),
          cardType: cardType,
          cardDesignType: cardDesignType,
        ),
      );
    }
  }
}
