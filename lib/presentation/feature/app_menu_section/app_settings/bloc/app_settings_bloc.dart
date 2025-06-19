import 'package:expenso_expense_tracker/domain/repositories/app_menu_section/app_settings/app_settings_repository.dart';

import 'app_settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppSettingsBloc extends Cubit<AppSettingsState> {
  AppSettingsBloc(this._repo) : super(const AppSettingsState());

  final AppSettingsRepository _repo;

  /// Add your business logic here
}
