import 'package:expenso_expense_tracker/data/local_persistence/converters/add_card_model_converter_extensions.dart';
import 'package:expenso_expense_tracker/domain/repositories/add_card/add_card_repository.dart';
import 'package:flutter/cupertino.dart';

import '../../dao/add_card/add_card_dao.dart';
import '../../models/add_card/add_card_model.dart';

class AddCardRepositoryImpl implements AddCardRepository {
  final CardDetailsDao _dao;

  AddCardRepositoryImpl(this._dao);

  @override
  Future<void> insertCard(AddCardModel card) async {
    await _dao.insertCard(card.toCompanion());
  }

  @override
  Future<void> updateCard(AddCardModel card) async {
    await _dao.updateCard(card);
  }


  @override
  Future<List<AddCardModel>> getAllCards() async {
    return await _dao.getAllCards();
  }

  @override
  Future<void> deleteCard(int id) async {
    await _dao.deleteCard(id);
  }
}
