import 'package:drift/drift.dart';

import '../converters/add_card_model_converter_extensions.dart';

class CardsDetails extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get cardHolderName => text()();
  TextColumn get cardNumber => text()();
  TextColumn get expiryDate => text()();
  TextColumn get cardType => text().map(const CardTypeConverter())();
  TextColumn get cardDesignType => text().map(const CardDesignTypeConverter())();

  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();
}
