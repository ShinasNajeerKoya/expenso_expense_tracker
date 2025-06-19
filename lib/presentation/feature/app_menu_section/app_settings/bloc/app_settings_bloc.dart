import 'dart:developer';

import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/app_settings/app_settings_repository.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';

import 'app_settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppSettingsBloc extends Cubit<AppSettingsState> {
  AppSettingsBloc(this._repo) : super(const AppSettingsState()) {
    initFunction();
  }

  void initFunction() {
    loadLandingPageState();
    loadSplashDuration();
  }

  final AppSettingsRepository _repo;

  void toggleLandingPage(bool disable) async {
    emit(state.copyWith(isLoading: true));
    await _repo.setLandingPageDisabled(disable);
    emit(state.copyWith(isLoading: false, landingPageDisabled: disable));
  }

  void loadLandingPageState() async {
    emit(state.copyWith(isLoading: true));
    final isDisabled = await _repo.isLandingPageDisabled();
    emit(state.copyWith(isLoading: false, landingPageDisabled: isDisabled));
  }

  void setSplashDuration(SplashDurationTypeEnum duration) async {
    emit(state.copyWith(isLoading: true));
    final isSaved = await _repo.setSplashDuration(duration);
    if (isSaved) {
      emit(state.copyWith(splashDuration: duration, isLoading: false));
    } else {
      emit(state.copyWith(error: true, isLoading: false));
    }
  }

  void loadSplashDuration() async {
    emit(state.copyWith(isLoading: true));
    final splashDuration = await _repo.getSplashDuration();
    emit(state.copyWith(
      splashDuration: splashDuration,
      isLoading: false,
    ));
  }
}
