import 'package:expenso_expense_tracker/domain/repositories/onboarding/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  @override
  Future<void> completeOnboarding() async {
    // Dummy logic, maybe later: SharedPreferences.setBool('onboarded', true)
    await Future.delayed(Duration(milliseconds: 100));
  }
}
