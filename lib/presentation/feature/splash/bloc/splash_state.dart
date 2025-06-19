import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';
part 'splash_state.g.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    @Default(false) bool error,
    @Default(false) bool isLoading,

    String? targetRoute,

    @Default(SplashDurationTypeEnum.medium) SplashDurationTypeEnum splashDuration,


  }) = _SplashState;

  factory SplashState.fromJson(Map<String, dynamic> json) =>
      _$SplashStateFromJson(json);
}
