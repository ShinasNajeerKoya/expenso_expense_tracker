import 'package:flutter/material.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';

enum AppLanguageEnum {
  english,
  kannada,
  malayalam,
  tamil,
}

extension AppLanguageEnumExtension on AppLanguageEnum {
  Locale get locale {
    switch (this) {
      case AppLanguageEnum.english:
        return const Locale('en', 'US');
      case AppLanguageEnum.kannada:
        return const Locale('kn', 'IN');
      case AppLanguageEnum.malayalam:
        return const Locale('ml', 'IN');
      case AppLanguageEnum.tamil:
        return const Locale('ta', 'IN');
    }
  }

  String get displayName {
    switch (this) {
      case AppLanguageEnum.english:
        return 'English';
      case AppLanguageEnum.kannada:
        return 'ಕನ್ನಡ';
      case AppLanguageEnum.malayalam:
        return 'മലയാളം';
      case AppLanguageEnum.tamil:
        return 'தமிழ்';
    }
  }

  static AppLanguageEnum fromLocale(Locale locale) {
    return AppLanguageEnum.values.firstWhere(
      (lang) => lang.locale == locale,
      orElse: () => AppLanguageEnum.english,
    );
  }
}
