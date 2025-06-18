import 'package:flutter/material.dart';
import '../themes/fonts.dart';

extension FontStyles on TextStyle {
  static TextStyle creditCard(
      {double size = FontSizes.md,
      Color? color,
      FontWeight weight = FontWeight.normal,
      FontStyle style = FontStyle.normal,
      double? letterSpacing}) {
    return TextStyle(
      fontFamily: AppFonts.creditCardNew,
      fontSize: size,
      color: color,
      fontWeight: weight,
      fontStyle: style,
      letterSpacing: letterSpacing,
    );
  }
}
