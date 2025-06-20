// core/di/injector.dart

import 'package:expenso_expense_tracker/domain/repositories/add_card/add_card_repository.dart';
import 'package:expenso_expense_tracker/domain/repositories/add_card/add_card_repository_impl.dart';
import 'package:expenso_expense_tracker/domain/repositories/home/home_repository.dart';
import 'package:expenso_expense_tracker/domain/repositories/home/home_repository_impl.dart';
import 'package:expenso_expense_tracker/presentation/add_card/bloc/add_card_bloc.dart';
import 'package:expenso_expense_tracker/presentation/home/bloc/home_bloc.dart';
import 'package:expenso_expense_tracker/presentation/onboarding/bloc/onboarding_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../data/dao_impl/add_card/add_card_dao_impl.dart';
import '../../data/local_persistence/app_database.dart';
import '../../domain/dao/add_card/add_card_dao.dart';
import '../../domain/repositories/onboarding/onboarding_repository.dart';
import '../../domain/repositories/onboarding/onboarding_repository_impl.dart';

class GetItHelper {
  static void init() {
    final getIt = GetIt.instance;

    /// local db
    getIt.registerSingleton<AppDatabase>(AppDatabase.instance);
    getIt.registerLazySingleton<CardDetailsDao>(
        () => CardDetailsDaoImpl(getIt<AppDatabase>()));

    /// Repositories
    getIt.registerSingleton<OnboardingRepository>(OnboardingRepositoryImpl());
    getIt.registerSingleton<HomeRepository>(HomeRepositoryImpl());
    getIt.registerSingleton<AddCardRepository>(
        AddCardRepositoryImpl(getIt<CardDetailsDao>()));

    /// BloCs
    getIt.registerSingleton<OnboardingBloc>(
        OnboardingBloc(getIt<OnboardingRepository>()));
    getIt.registerSingleton<HomeBloc>(
        HomeBloc(cardRepo: getIt<AddCardRepository>()));
    getIt.registerSingleton<AddCardBloc>(
        AddCardBloc(getIt<AddCardRepository>()));
    // getIt.registerSingleton<InboxBloc>(InboxBloc());
  }

  void dispose() {
    // optional: clear bloc states or dispose streams if needed
  }
}
