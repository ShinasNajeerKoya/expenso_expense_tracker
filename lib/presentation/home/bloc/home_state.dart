
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/add_card/add_card_model.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool error,
    @Default(false) bool isLoading,

    @Default([]) List<AddCardModel> cardList,


    /// add you state logic here
    }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);
}
