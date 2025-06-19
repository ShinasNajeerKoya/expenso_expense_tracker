import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashDurationPref {
  static const _key = 'splashDuration';

  static Future<bool> setSplashDuration(SplashDurationTypeEnum value) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(_key, value.name); // Return the actual result
  }

  static Future<SplashDurationTypeEnum> getSplashDuration() async {
    final prefs = await SharedPreferences.getInstance();
    final stringValue = prefs.getString(_key);
    return SplashDurationTypeEnum.values.firstWhere(
          (e) => e.name == stringValue,
      orElse: () => SplashDurationTypeEnum.medium,
    );
  }
}
