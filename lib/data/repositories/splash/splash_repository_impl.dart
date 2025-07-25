import 'package:expenso_expense_tracker/core/shared_preference/landing_page/landing_page_pref.dart';
import 'package:expenso_expense_tracker/domain/repositories/splash/splash_repository.dart';

class SplashRepositoryImpl implements SplashRepository {
  @override
  Future<void> startSplash() async {
    // start your repository here
  }

  @override
  Future<bool> isLandingPageDisabled() async {
    final hasSeenLanding = await LandingPagePref.isLandingPageDisabled();

    return hasSeenLanding;
  }
}
