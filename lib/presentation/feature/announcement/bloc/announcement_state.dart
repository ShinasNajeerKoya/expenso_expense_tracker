import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_state.freezed.dart';
part 'announcement_state.g.dart';

@freezed
abstract class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState({
    @Default(false) bool error,
    @Default(false) bool isLoading,
  }) = _AnnouncementState;

  factory AnnouncementState.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementStateFromJson(json);
}
