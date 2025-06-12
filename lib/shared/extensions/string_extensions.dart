import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';

extension SafeLocalizationExtension on String {
  String get toLocalizeString {
    try {
      return this.tr();
    } catch (e) {
      debugPrint("❌ Translation failed for key: '$this' — Error: $e");
      return '[N/A]';
    }
  }
}
