import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/add_card/add_card_repository.dart';
import '../../../domain/repositories/home/home_repository.dart';

import 'home_state.dart';

///
///

class HomeBloc extends Cubit<HomeState> {
  HomeBloc({required this.cardRepo}) : super(const HomeState());

  final AddCardRepository cardRepo;

  Future<void> loadAllCards() async {
    emit(state.copyWith(isLoading: true));
    try {
      final cards = await cardRepo.getAllCards();
      final reversedCards = cards.reversed.toList(); // newest first

      emit(state.copyWith(cardList: reversedCards, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: true));
    }
  }
}
