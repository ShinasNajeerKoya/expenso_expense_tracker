import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/add_card/add_card_repository.dart';
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

  // void validateAndSubmitCardDetails() {
  //   final cardType = state.selectedCardType;
  //   final cardNumber = state.cardNumber;
  //   final cardHolderName = state.cardHolderName;
  //   final expiryDate = state.expiryDate;
  //   bool hasError = false;
  //
  //   String? cardNumberError;
  //   String? nameError;
  //   String? expiryError;
  //
  //   if (!RegExp(r'^\d+$').hasMatch(state.cardNumber)) {
  //     cardNumberError = 'Only digits allowed';
  //     hasError = true;
  //   }
  //
  //   if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(state.cardHolderName)) {
  //     nameError = 'Only alphabets allowed';
  //     hasError = true;
  //   }
  //
  //   if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(state.expiryDate)) {
  //     expiryError = 'Format must be MM/YY';
  //     hasError = true;
  //   }
  //
  //   emit(state.copyWith(
  //     cardNumberError: cardNumberError,
  //     cardHolderError: nameError,
  //     expiryDateError: expiryError,
  //   ));
  //
  //   if (!hasError) {
  //     log('card details : $cardType, $cardNumber, $cardHolderName, $expiryDate');
  //
  //     emit(state.copyWith(
  //       cardNumber: cardNumber,
  //       cardNumberError: null,
  //       cardHolderName: cardHolderName,
  //       cardHolderError: null,
  //       expiryDate: expiryDate,
  //       expiryDateError: null,
  //     ));
  //
  //     _repo.startAddCard();
  //   }
  // }

  void validateAndSubmitCardDetails() {
    final cardType = state.selectedCardType;
    final cardNumber = state.cardNumber;
    final cardHolderName = state.cardHolderName;
    final expiryDate = state.expiryDate;

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

      _repo.startAddCard();
    }
  }
}
