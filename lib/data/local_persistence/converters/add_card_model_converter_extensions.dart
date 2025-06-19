import 'package:drift/drift.dart';
import 'package:expenso_expense_tracker/domain/models/add_card/add_card_model.dart';

import '../../../presentation/feature/add_card/utils/card_design_type_extension.dart';
import '../../../presentation/feature/add_card/utils/card_type_extensions.dart';
import '../app_database.dart';
import '../drift_tables/card_details_table.dart';

extension AddCardModelToDrift on AddCardModel {
  CardsDetailsCompanion toCompanion() {
    return CardsDetailsCompanion(
      id: id != null ? Value(id!) : const Value.absent(),
      cardHolderName: Value(cardHolderName),
      cardNumber: Value(cardNumber),
      expiryDate: Value(expiryDate),
      cardType: Value(cardType),
      cardDesignType: Value(cardDesignType),
      // isDefault: Value(true),
    );
  }
}

extension CardFromDrift on CardsDetail {
  AddCardModel toModel() {
    return AddCardModel(
      id: id,
      cardHolderName: cardHolderName,
      cardNumber: cardNumber,
      expiryDate: expiryDate,
      cardType: cardType,
        cardDesignType:cardDesignType,
    );
  }
}

class CardTypeConverter extends TypeConverter<CardType, String> {
  const CardTypeConverter();

  @override
  CardType fromSql(String fromDb) {
    return CardType.values.firstWhere((e) => e.name == fromDb);
  }

  @override
  String toSql(CardType value) => value.name;
}

class CardDesignTypeConverter extends TypeConverter<CardDesignType, String> {
  const CardDesignTypeConverter();

  @override
  CardDesignType fromSql(String fromDb) {
    return CardDesignType.values.firstWhere((e) => e.name == fromDb);
  }

  @override
  String toSql(CardDesignType value) => value.name;
}
