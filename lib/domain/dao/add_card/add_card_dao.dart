import 'package:card_scanner/card_scanner.dart';

import '../../../data/local_persistence/app_database.dart';
import '../../models/add_card/add_card_model.dart';


abstract class CardDetailsDao {
  Future<void> insertCard(CardsDetailsCompanion card);
  Future<List<AddCardModel>> getAllCards();
  Future<void> deleteCard(int id);

  Future<void> updateCard(AddCardModel card);

}
