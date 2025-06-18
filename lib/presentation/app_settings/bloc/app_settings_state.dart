import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_state.freezed.dart';
part 'app_settings_state.g.dart';

@freezed
abstract class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    @Default(false) bool error,
    @Default(false) bool isLoading,
  }) = _AppSettingsState;

  factory AppSettingsState.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsStateFromJson(json);
}
