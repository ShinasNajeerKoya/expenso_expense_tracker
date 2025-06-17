import '../../../generated/app_icons.dart';

enum CardDesignType {
  card1,
  card2,
  card3,
  card4,
  card5,
  card6,
  card7,
  card8,
  card9,
}
extension CardDesignTypeExtension on CardDesignType {
  String get label {
    switch (this) {
      case CardDesignType.card1:
        return 'Classic Blue';
      case CardDesignType.card2:
        return 'Sunset Gold';
      case CardDesignType.card3:
        return 'Midnight Black';
      case CardDesignType.card4:
        return 'Skyline Gray';
      case CardDesignType.card5:
        return 'Ocean Green';
      case CardDesignType.card6:
        return 'Purple Haze';
      case CardDesignType.card7:
        return 'Crimson Red';
      case CardDesignType.card8:
        return 'Snow White';
      case CardDesignType.card9:
        return 'Futuristic Silver';
    }
  }

  String get svgAsset {
    switch (this) {
      case CardDesignType.card1:
        return AppIcons.kCard1;
      case CardDesignType.card2:
        return AppIcons.kCard2;
      case CardDesignType.card3:
        return AppIcons.kCard3;
      case CardDesignType.card4:
        return AppIcons.kCard4;
      case CardDesignType.card5:
        return AppIcons.kCard5;
      case CardDesignType.card6:
        return AppIcons.kCard6;
      case CardDesignType.card7:
        return AppIcons.kCard7;
      case CardDesignType.card8:
        return AppIcons.kCard8;
      case CardDesignType.card9:
        return AppIcons.kCard9;
    }
  }
}
