import 'dart:ui';

import 'package:expenso_expense_tracker/core/shared_preference/app_language_pref.dart';
import 'package:expenso_expense_tracker/core/shared_preference/landing_page_pref.dart';
import 'package:expenso_expense_tracker/core/shared_preference/splash_duration_pref.dart';
import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/app_settings/app_settings_repository.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';

class AppSettingsRepositoryImpl implements AppSettingsRepository {
  @override
  Future<void> startAppSettings() async {
    // start your repository here
  }

  @override
  Future<void> setLandingPageDisabled(bool value) async {
    await LandingPagePref.setLandingPageSeen(value);
  }

  @override
  Future<bool> isLandingPageDisabled() async {
    return await LandingPagePref.isLandingPageDisabled();
  }

  @override
  Future<bool> setSplashDuration(SplashDurationTypeEnum duration) async {
    return await SplashDurationPref.setSplashDuration(duration);
  }

  @override
  Future<SplashDurationTypeEnum> getSplashDuration() async {
    return await SplashDurationPref.getSplashDuration();
  }

  @override
  Future<bool> setLocale(Locale locale) async {
    return await LocalePref.saveLocale(locale);
  }

  @override
  Future<Locale> getLocale() async {
    return await LocalePref.getSavedLocale();
  }
}
