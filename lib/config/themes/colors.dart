// custom colors of the app

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color kTransparent = Color(0x00000000);
  static const Color kBlack = Color(0xFF000000);
  static const Color kCarousalPrimaryCream = Color(0xFFC67B56);
  static const Color kCarousalSecondaryCream = Color(0xFFEFCCC4);
  static const Color kCreamBackgroundColor = Color(0xFFF3F1EB);
  static const Color kDisableColor = Color(0xFFB6B6B6);
  static const Color kHomeBlackColor = Color(0xFF1F1F1F);
  static const Color kHomeBgColor = Color(0xFFFFFDFB);
  static const Color kHomeGraphBgColor = Color(0xFFF5F4ED);
}

class CustomThemeColor {
  // for red theme
  static const redPrimary = Color(0xFFD0302F);
  static const redSecondary = Color(0xFFEFF1F2);
  static const redImageBgColor = Color(0xFF5F7281);

  static const redPrimaryIcon = Color(0xFFA62626);
  static const redSecondaryIcon = Color(0xFF4C5B67);

  static const redPrimaryText = Color(0xFF262E34);
  static const redSecondaryText = Color(0xFFD0302F);

  static const redTertiaryBackgroundColor = Color(0xFFFFFFFF);

  static const redBottomIconColor = Color(0xFF5E7282);

  static const light = Color(0xFFEFF1F2);
  static const selectedTextColor = Color(0xFFFFFFFF);

  ///

  // for blue theme
  static const bluePrimary = Color(0xFF2196F3);
  static const blueSecondary = Color(0xFFE9F4FE);

  static const blueImageBgColor = Color(0xFF071E31);

  static const bluePrimaryIcon = Color(0xFF1A78C2);
  static const blueSecondaryIcon = Color(0xFF1A78C2);

  static const bluePrimaryText = Color(0xFF071E31);
  static const blueSecondaryText = Color(0xFF2196F3);

  static const blueTertiaryBackgroundColor = Color(0xFFFFFFFF);

  static const blueBottomIconColor = Color(0xFF1878C3);

  static const blueLight = Color(0xFFE9F4FE);
  static const blueSelectedTextColor = Color(0xFFFFFFFF);

  ///

  // for green theme
  static const greenPrimary = Color(0xFF4CAF50);
  static const greenSecondary = Color(0xFFEDF7ED);

  static const greenImageBgColor = Color(0xFF173418);

  static const greenPrimaryIcon = Color(0xFF3D8C40);
  static const greenSecondaryIcon = Color(0xFF3D8C40);

  static const greenPrimaryText = Color(0xFF173418);
  static const greenSecondaryText = Color(0xFF4CAF50);

  static const greenTertiaryBackgroundColor = Color(0xFFFFFFFF);

  static const greenBottomIconColor = Color(0xFF3D8C40);

  static const greenLight = Color(0xFFEDF7ED);
  static const greenSelectedTextColor = Color(0xFFFFFFFF);

  ///

  // for dark gold theme
  static const darkGoldPrimary = Color(0xFFCAA969);
  static const darkGoldSecondary = Color(0xFF282828);

  static const darkGoldImageBgColor = Color(0xFFCAA969);

  static const darkGoldBackground = Color(0xFF000000);
  static const darkGoldPrimaryIcon = Color(0xFFCAA969);
  static const darkGoldSecondaryIcon = Color(0xFFCAA969);

  static const darkGoldPrimaryText = Color(0xFFCAA969);
  static const darkGoldSecondaryText = Color(0xFFCAA969);

  static const darkGoldTertiaryBackgroundColor = Color(0xFF1A1A1A);

  static const darkGoldBottomIconColor = Color(0xFFC9A968);

  static const darkGoldLight = Color(0xFF282828);
  static const darkGoldSelectedTextColor = Color(0xFFCAA969);

  ///

  // for dark white theme
  static const darkWhitePrimary = Color(0xFFF2F2F2);
  static const darkWhiteSecondary = Color(0xFF1A1E24);

  static const darkWhiteImageBgColor = Color(0xFFF2F2F2);

  static const darkWhiteBackground = Color(0xFF2F373F);
  static const darkWhitePrimaryIcon = Color(0xFFF2F2F2);
  static const darkWhiteSecondaryIcon = Color(0xFFF2F2F2);

  // static const darkWhiteSecondaryIcon = Color(0xFFCAA969);

  static const darkWhitePrimaryText = Color(0xFFF2F2F2);
  static const darkWhiteSecondaryText = Color(0xFFF2F2F2);

  static const darkWhiteTertiaryBackgroundColor = Color(0xFF2F373F);

  static const darkWhiteBottomIconColor = Color(0xFFF2F2F2);

  static const darkWhiteLight = Color(0xFF282828);
  static const darkWhiteSelectedTextColor = Color(0xFFCAA969);

  ///

  // for gold theme
  static const goldPrimary = Color(0xFFC49A6C);
  static const goldSecondary = Color(0xFFFFF8EE);

  static const goldImageBgColor = Color(0xFFC49A6C);

  static const goldBackground = Color(0xFFFFFFFF);
  static const goldPrimaryIcon = Color(0xFFC49A6C);
  static const goldSecondaryIcon = Color(0xFFC49A6C);

  static const goldPrimaryText = Color(0xFF6C4A22);
  static const goldSecondaryText = Color(0xFFC49A6C);

  static const goldTertiaryBackgroundColor = Color(0xFFFFFFFF);

  static const goldBottomIconColor = Color(0xFFC59A6C);

  static const goldLight = Color(0xFFFFF7EE);
  static const goldSelectedTextColor = Color(0xFFFFFFFF);
}

class GradientColors {
  GradientColors._();

  static List<Color> get redHomePageGradient => [
        const Color(0xFFFEFEFE),
        const Color(0xFFF4F5F5),
        // AppColors.kYellow,
      ];

  static List<Color> get blueHomePageGradient => [const Color(0xFFFDFEFF), const Color(0xFFEFF6FE)];

  static List<Color> get greenHomePageGradient => [const Color(0xFFFDFEFD), const Color(0xFFF2F9F1)];

  static List<Color> get darkGoldHomePageGradient => [const Color(0xFF1E1E1E), const Color(0xFF282828)];

  static List<Color> get darkWhiteHomePageGradient => [const Color(0xFF1C2128), const Color(0xFF252A33)];

  static List<Color> get goldHomePageGradient => [const Color(0xFFFFFFFE), const Color(0xFFFFF5E9)];

  /// home music player volume control gradient
  static List<Color> get redHomePageAudioGradient => [
        const Color(0xFFF6C0C0),
        const Color(0xFFDEA5A5),
        const Color(0xFFDEA5A5),
        const Color(0xFFAB3A38),
        const Color(0xFF80201F),
        const Color(0xFF540E0E),
      ];

  static List<Color> get blueHomePageAudioGradient => [
        const Color(0xFF8DCBFF),
        const Color(0xFF7CC5FF),
        const Color(0xFF6AB3ED),
        const Color(0xFF1A79C5),
        const Color(0xFF093350),
        const Color(0xFF09304B),
      ];

  static List<Color> get greenHomePageAudioGradient => [
        const Color(0xFF86F6B8),
        const Color(0xFF67D998),
        const Color(0xFF53B17E),
        const Color(0xFF02753A),
        const Color(0xFF023E27),
        const Color(0xFF032E22),
      ];

  static List<Color> get darkGoldHomePageAudioGradient => [
        // const Color(0xFFB79A59),
        // const Color(0xFFCCAD6F),
        // const Color(0xFFD0B277),
        // const Color(0xFFDDC494),
        // const Color(0xFFE8D6B1),
        // const Color(0xFFFFF2D3),
        const Color(0xFFFCFCFC),
        const Color(0xFFFFEAC3),
        const Color(0xFFFFE2AB),
        const Color(0xFFFFC747),
        const Color(0xFFFFBB16),
        const Color(0xFFFFBB16),
      ];

  static List<Color> get darkWhiteHomePageAudioGradient => [
        const Color(0xFFF2F2F2),
        const Color(0xFFDCDCDC),
        const Color(0xFFADADAD),
        const Color(0xFF757575),
        const Color(0xFF2F2F2F),
        const Color(0xFF16161A),
      ];

  static List<Color> get goldHomePageAudioGradient => [
        const Color(0xFFCC9F69),
        const Color(0xFF946F45),
        const Color(0xFF9F723D),
        const Color(0xFFCBA567),
        const Color(0xFFEBC884),
        const Color(0xFFE9C582),
      ];

  /// prayer calendar widget
  static List<Color> get redPrayerScreenCalenderGradient => [
        const Color(0xFFFEFEFE).withOpacity(0.9),
        const Color(0xFFFEFEFE).withOpacity(0.5),
        const Color(0xFFF4F5F5).withOpacity(0.6),
        const Color(0xFFF4F5F5).withOpacity(0.8),
        const Color(0xFFF4F5F5).withOpacity(0.9),
      ];

  static List<Color> get bluePrayerScreenCalenderGradient => [
        const Color(0xFFFDFEFF).withOpacity(0.9),
        const Color(0xFFFDFEFF).withOpacity(0.5),
        const Color(0xFFEFF6FE).withOpacity(0.6),
        const Color(0xFFEFF6FE).withOpacity(0.8),
        const Color(0xFFEFF6FE).withOpacity(0.9),
      ];

  static List<Color> get greenPrayerScreenCalenderGradient => [
        const Color(0xFFFDFEFD).withOpacity(0.9),
        const Color(0xFFFDFEFD).withOpacity(0.5),
        const Color(0xFFF2F9F1).withOpacity(0.6),
        const Color(0xFFF2F9F1).withOpacity(0.8),
        const Color(0xFFF2F9F1).withOpacity(0.9),
      ];

  static List<Color> get darkGoldPrayerScreenCalenderGradient => [
        const Color(0xFF1E1E1E).withOpacity(0.9),
        const Color(0xFF1E1E1E).withOpacity(0.5),
        const Color(0xFF282828).withOpacity(0.6),
        const Color(0xFF282828).withOpacity(0.8),
        const Color(0xFF282828).withOpacity(0.9),
      ];

  static List<Color> get darkWhitePrayerScreenCalenderGradient => [
        const Color(0xFF1C2128).withOpacity(0.9),
        const Color(0xFF1C2128).withOpacity(0.5),
        const Color(0xFF252A33).withOpacity(0.6),
        const Color(0xFF252A33).withOpacity(0.8),
        const Color(0xFF252A33).withOpacity(0.9),
      ];

  static List<Color> get goldPrayerScreenCalenderGradient => [
        const Color(0xFFffffff).withOpacity(0.9),
        const Color(0xFFffffff).withOpacity(0.5),
        const Color(0xFFFFF5E9).withOpacity(0.6),
        const Color(0xFFFFF5E9).withOpacity(0.8),
        const Color(0xFFFFF5E9).withOpacity(0.9),
      ];
}
