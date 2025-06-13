import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/add_card/add_card_repository.dart';
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

  void validateAndSubmit() {
    bool hasError = false;

    String? cardNumberError;
    String? nameError;
    String? expiryError;

    if (!RegExp(r'^\d+$').hasMatch(state.cardNumber)) {
      cardNumberError = 'Only digits allowed';
      hasError = true;
    }

    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(state.cardHolderName)) {
      nameError = 'Only alphabets allowed';
      hasError = true;
    }

    if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(state.expiryDate)) {
      expiryError = 'Format must be MM/YY';
      hasError = true;
    }

    emit(state.copyWith(
      cardNumberError: cardNumberError,
      cardHolderError: nameError,
      expiryDateError: expiryError,
    ));

    if (!hasError) {
      _repo.startAddCard();
    }
  }
}
