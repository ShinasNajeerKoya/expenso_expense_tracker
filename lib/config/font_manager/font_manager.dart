// lib/config/font_manager.dart

import 'package:flutter/material.dart';
import '../themes/fonts.dart';

class FontManager {
  FontManager._privateConstructor();

  static final FontManager _instance = FontManager._privateConstructor();

  factory FontManager() {
    return _instance;
  }

  TextStyle regular(double fontSize, {Color? color}) {
    return TextStyle(
      fontFamily: AppFonts.creditCardNew,
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle bold(double fontSize, {Color? color}) {
    return TextStyle(
      fontFamily: AppFonts.creditCardNew,
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle italic(double fontSize, {Color? color}) {
    return TextStyle(
      fontFamily: AppFonts.creditCardNew,
      fontSize: fontSize,
      color: color,
      fontStyle: FontStyle.italic,
    );
  }
}
