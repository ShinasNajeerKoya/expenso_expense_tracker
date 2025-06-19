import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/app_settings/app_settings_repository.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:flutter/material.dart';

import 'splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expenso_expense_tracker/domain/repositories/splash/splash_repository.dart';

class SplashBloc extends Cubit<SplashState> {
  final SplashRepository splashRepository;
  final AppSettingsRepository appSettingsRepository;

  SplashBloc({
    required this.splashRepository,
    required this.appSettingsRepository,
  }) : super(const SplashState()) {
    initBloc();
  }

  void initBloc() {
    loadSplashDurationFromSharedPref();
  }

  Future<void> init() async {
    emit(state.copyWith(isLoading: true));

    try {
      await Future.delayed(state.splashDuration.selectedDelay);
      final isLandingPageDisabled = await splashRepository.isLandingPageDisabled();
      final targetRoute = isLandingPageDisabled ? HomeRoute.name : OnboardingRoute.name;
      emit(state.copyWith(isLoading: false, targetRoute: targetRoute));
    } catch (_) {
      emit(state.copyWith(isLoading: false, error: true));
    }
  }

  void loadSplashDurationFromSharedPref() async {
    emit(state.copyWith(isLoading: true));
    final splashDuration = await appSettingsRepository.getSplashDuration();

    emit(state.copyWith(
      splashDuration: splashDuration,
      isLoading: false,
    ));
  }
}
