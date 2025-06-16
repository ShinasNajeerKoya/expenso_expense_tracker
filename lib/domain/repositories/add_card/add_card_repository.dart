

import '../../models/add_card/add_card_model.dart';

abstract class AddCardRepository {

  /// add you repository logic here
  Future<void> insertCard(AddCardModel card);
  Future<List<AddCardModel>> getAllCards();

  Future<void> deleteCard(int id);



}
