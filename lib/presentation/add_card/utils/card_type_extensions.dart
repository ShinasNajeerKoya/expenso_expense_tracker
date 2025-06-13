import '../../../generated/app_icons.dart';

enum CardType { masterCard, visa, ruPay }

extension CardTypeExtension on CardType {
  String get label => switch (this) {
        CardType.ruPay => 'RuPay',
        CardType.masterCard => 'MasterCard',
        CardType.visa => 'Visa',
      };

  String get icon => switch (this) {
        CardType.ruPay => AppIcons.kRuPay,
        CardType.masterCard => AppIcons.kMasterCard,
        CardType.visa => AppIcons.kVisa,
      };
}
