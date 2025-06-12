// core/di/injector.dart

import 'package:expenso_expense_tracker/presentation/onboarding/bloc/onboarding_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../domain/repositories/onboarding/onboarding_repository.dart';
import '../../domain/repositories/onboarding/onboarding_repository_impl.dart';

class GetItHelper {
  static void init() {
    final getIt = GetIt.instance;

    /// Repositories
    getIt.registerSingleton<OnboardingRepository>(OnboardingRepositoryImpl());

    /// BloCs
    getIt.registerSingleton<OnboardingBloc>(OnboardingBloc(getIt<OnboardingRepository>()));
    // getIt.registerSingleton<InboxBloc>(InboxBloc());
  }

  void dispose() {
    // optional: clear bloc states or dispose streams if needed
  }
}
