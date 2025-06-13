import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_state.freezed.dart';
part 'add_card_state.g.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const factory AddCardState({
    @Default(false) bool error,
    @Default(false) bool isLoading,

    // Form field values
    @Default('') String cardNumber,
    @Default('') String cardHolderName,
    @Default('') String expiryDate,

    // Error messages
    String? cardNumberError,
    String? cardHolderError,
    String? expiryDateError,
  }) = _AddCardState;

  factory AddCardState.fromJson(Map<String, dynamic> json) => _$AddCardStateFromJson(json);
}
