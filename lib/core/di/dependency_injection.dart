// core/di/injector.dart

import 'package:expenso_expense_tracker/domain/repositories/add_card/add_card_repository.dart';
import 'package:expenso_expense_tracker/domain/repositories/add_card/add_card_repository_impl.dart';
import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/app_settings/app_settings_repository.dart';
import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/app_settings/app_settings_repository_impl.dart';
import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/profile/profile_repository.dart';
import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/profile/profile_repository_impl.dart';
import 'package:expenso_expense_tracker/domain/repositories/home/home_repository.dart';
import 'package:expenso_expense_tracker/domain/repositories/home/home_repository_impl.dart';
import 'package:expenso_expense_tracker/domain/repositories/splash/splash_repository.dart';
import 'package:expenso_expense_tracker/domain/repositories/splash/splash_repository_impl.dart';
import 'package:expenso_expense_tracker/presentation/feature/add_card/bloc/add_card_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/profile/bloc/profile_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/home/bloc/home_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/onboarding/bloc/onboarding_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/splash/bloc/splash_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../data/dao_impl/add_card/add_card_dao_impl.dart';
import '../../data/local_persistence/app_database.dart';
import '../../domain/dao/add_card/add_card_dao.dart';
import '../../domain/repositories/onboarding/onboarding_repository.dart';
import '../../domain/repositories/onboarding/onboarding_repository_impl.dart';
import '../routes/route_config.dart';

final getIt = GetIt.instance;

class GetItHelper {
  static void init() {
    /// AppRouter
    getIt.registerSingleton<AppRouter>(AppRouter());

    /// local db instance
    getIt.registerSingleton<AppDatabase>(AppDatabase.instance);

    /// local db
    getIt.registerLazySingleton<CardDetailsDao>(() => CardDetailsDaoImpl(getIt<AppDatabase>()));

    /// Repositories
    getIt.registerSingleton<SplashRepository>(SplashRepositoryImpl());
    getIt.registerSingleton<OnboardingRepository>(OnboardingRepositoryImpl());
    getIt.registerSingleton<HomeRepository>(HomeRepositoryImpl());
    getIt.registerSingleton<AddCardRepository>(AddCardRepositoryImpl(getIt<CardDetailsDao>()));
    getIt.registerSingleton<AppSettingsRepository>(AppSettingsRepositoryImpl());
    getIt.registerSingleton<ProfileRepository>(ProfileRepositoryImpl());

    /// BloCs
    getIt.registerSingleton<SplashBloc>(
      SplashBloc(
        splashRepository: getIt<SplashRepository>(),
        appSettingsRepository: getIt<AppSettingsRepository>(),
      ),
    );
    getIt.registerSingleton<OnboardingBloc>(
      OnboardingBloc(getIt<OnboardingRepository>()),
    );
    getIt.registerSingleton<HomeBloc>(HomeBloc(cardRepo: getIt<AddCardRepository>()));
    getIt.registerSingleton<AddCardBloc>(AddCardBloc(getIt<AddCardRepository>()));
    getIt.registerSingleton<AppSettingsBloc>(AppSettingsBloc(getIt<AppSettingsRepository>()));
    getIt.registerSingleton<ProfileBloc>(ProfileBloc(getIt<ProfileRepository>()));
  }

  void dispose() {
    // optional: clear bloc states or dispose streams if needed
  }
}
