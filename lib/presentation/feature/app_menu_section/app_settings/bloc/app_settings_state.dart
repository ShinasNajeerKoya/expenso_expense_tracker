import 'dart:ui';

import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/locale_converter_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_state.freezed.dart';
part 'app_settings_state.g.dart';

@freezed
abstract class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    @Default(false) bool error,
    @Default(false) bool isLoading,
    @Default(false) bool landingPageDisabled,
    @Default(SplashDurationTypeEnum.medium) SplashDurationTypeEnum splashDuration,
    @LocaleConverterHelper() @Default(Locale('en', 'US')) Locale selectedLocale,
  }) = _AppSettingsState;

  factory AppSettingsState.fromJson(Map<String, dynamic> json) => _$AppSettingsStateFromJson(json);
}
