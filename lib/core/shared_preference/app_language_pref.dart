import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

class LocalePref {
  static const _languageCodeKey = 'selectedLanguageCode';
  static const _countryCodeKey = 'selectedCountryCode';

  static Future<bool> saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageCodeKey, locale.languageCode);
    await prefs.setString(_countryCodeKey, locale.countryCode ?? '');
    return true;
  }

  static Future<Locale> getSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final lang = prefs.getString(_languageCodeKey) ?? 'en';
    final country = prefs.getString(_countryCodeKey) ?? 'US';
    return Locale(lang, country);
  }
}
