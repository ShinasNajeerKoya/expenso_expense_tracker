import 'package:flutter/material.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';

enum AppLanguageEnum { english, kannada, malayalam, tamil, telugu, hindi, german, spanish }

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
      case AppLanguageEnum.telugu:
        return const Locale('te', 'IN');
      case AppLanguageEnum.hindi:
        return const Locale('hi', 'IN');
      case AppLanguageEnum.german:
        return const Locale('de', 'DE');
      case AppLanguageEnum.spanish:
        return const Locale('es', 'ES');
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
      case AppLanguageEnum.telugu:
        return 'తెలుగు';
      case AppLanguageEnum.hindi:
        return 'हिंदी';
      case AppLanguageEnum.german:
        return 'Deutsch';
      case AppLanguageEnum.spanish:
        return 'Español';
    }
  }

  static AppLanguageEnum fromLocale(Locale locale) {
    return AppLanguageEnum.values.firstWhere(
      (lang) => lang.locale == locale,
      orElse: () => AppLanguageEnum.english,
    );
  }
}
