import 'package:expenso_expense_tracker/data/local_persistence/converters/add_card_model_converter_extensions.dart';
import 'package:flutter/cupertino.dart';

import '../../../domain/dao/add_card/add_card_dao.dart';
import '../../../domain/models/add_card/add_card_model.dart';
import '../../local_persistence/app_database.dart';

class CardDetailsDaoImpl implements CardDetailsDao {
  final AppDatabase _db;

  CardDetailsDaoImpl(this._db);

  @override
  Future<void> insertCard(CardsDetailsCompanion card) async {
    await _db.into(_db.cardsDetails).insert(card);
    debugPrint('data successfully added');
  }

  @override
  Future<List<AddCardModel>> getAllCards() async {
    final result = await _db.select(_db.cardsDetails).get();
    debugPrint('data successfully fetched');
    return result.map((e) => e.toModel()).toList();
  }

  @override
  Future<void> deleteCard(int id) async {
    await (_db.delete(_db.cardsDetails)..where((tbl) => tbl.id.equals(id)))
        .go();
    debugPrint('data successfully deleted');
  }
}
