import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

class LocaleConverterHelper implements JsonConverter<Locale, Map<String, dynamic>> {
  const LocaleConverterHelper();

  @override
  Locale fromJson(Map<String, dynamic> json) {
    return Locale(json['languageCode'] as String, json['countryCode'] as String?);
  }

  @override
  Map<String, dynamic> toJson(Locale locale) => {
        'languageCode': locale.languageCode,
        'countryCode': locale.countryCode,
      };
}
