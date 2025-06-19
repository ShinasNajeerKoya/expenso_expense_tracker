import 'package:shared_preferences/shared_preferences.dart';

class LandingPagePref {
  static const String _landingPageSeenKey = 'landingPageSeen';

  /// Save whether the landing page has been shown
  static Future<void> setLandingPageSeen(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_landingPageSeenKey, value);
  }

  /// Get whether the landing page has been seen
  static Future<bool> isLandingPageSeen() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_landingPageSeenKey) ?? false;
  }
}
