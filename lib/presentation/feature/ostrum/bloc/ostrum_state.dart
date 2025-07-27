import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/comment/comment_model.dart';

part 'ostrum_state.freezed.dart';
part 'ostrum_state.g.dart';

@freezed
abstract class OstrumState with _$OstrumState {
  const factory OstrumState({
    @Default(false) bool error,
    @Default(false) bool isLoading,
    @Default([]) List<CommentModel> comments,
  }) = _OstrumState;

  factory OstrumState.fromJson(Map<String, dynamic> json) =>
      _$OstrumStateFromJson(json);
}
