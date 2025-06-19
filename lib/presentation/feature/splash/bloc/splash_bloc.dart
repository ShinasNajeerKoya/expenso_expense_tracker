import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:flutter/material.dart';

import 'splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expenso_expense_tracker/domain/repositories/splash/splash_repository.dart';

class SplashBloc extends Cubit<SplashState> {
  SplashBloc(this._repo) : super(const SplashState());
  final SplashRepository _repo;

  Future<void> init() async {
    emit(state.copyWith(isLoading: true));

    try {
      await Future.delayed(const Duration(milliseconds: 900));

      final showOnboarding = await _repo.shouldShowOnboarding();

      final targetRoute = showOnboarding ? OnboardingRoute.name : HomeRoute.name;

      emit(state.copyWith(isLoading: false, targetRoute: targetRoute));
    } catch (_) {
      emit(state.copyWith(isLoading: false, error: true));
    }
  }
}
