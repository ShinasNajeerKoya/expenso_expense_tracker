import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';

abstract class AppSettingsRepository {
/// Add your repository logic here
  Future<void> startAppSettings();

  Future<void> setLandingPageDisabled(bool value); // add this
  Future<bool> isLandingPageDisabled();
  Future<bool> setSplashDuration(SplashDurationTypeEnum duration);
  Future<SplashDurationTypeEnum> getSplashDuration();
}
