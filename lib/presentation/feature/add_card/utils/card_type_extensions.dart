
import 'package:expenso_expense_tracker/generated/app_icons.dart';

enum CardType { masterCard, visa, ruPay }

extension CardTypeExtension on CardType {
  String get label => switch (this) {
        CardType.ruPay => 'RuPay',
        CardType.masterCard => 'MasterCard',
        CardType.visa => 'Visa',
      };

  String get whiteIcon => switch (this) {
        CardType.ruPay => AppIcons.kRupayWhite,
        CardType.masterCard => AppIcons.kMastercardWhite,
        CardType.visa => AppIcons.kVisaWhite,
      };

  String get blackIcon => switch (this) {
        CardType.ruPay => AppIcons.kRupayBlack,
        CardType.masterCard => AppIcons.kMastercardBlack,
        CardType.visa => AppIcons.kVisaBlack,
      };
}
