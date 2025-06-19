import 'dart:developer';

import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/app_settings/app_settings_repository.dart';

import 'app_settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppSettingsBloc extends Cubit<AppSettingsState> {
  AppSettingsBloc(this._repo) : super(const AppSettingsState()) {
    loadLandingPageState();
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
}
