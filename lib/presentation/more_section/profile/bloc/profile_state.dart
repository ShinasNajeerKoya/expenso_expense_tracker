import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';
part 'profile_state.g.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool error,
    @Default(false) bool isLoading,
  }) = _ProfileState;

  factory ProfileState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStateFromJson(json);
}
