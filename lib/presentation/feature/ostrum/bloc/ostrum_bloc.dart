import 'dart:developer';

import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../../shared/helper_functions/future_try_catch_helper/future_try_catch_helper.dart';
import 'ostrum_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expenso_expense_tracker/domain/repositories/ostrum/ostrum_repository.dart';
//
// class OstrumBloc extends Cubit<OstrumState> {
//   OstrumBloc(this._repo) : super(const OstrumState());
//
//   final OstrumRepository _repo;
//
//   /// Add your business logic here
// }

class OstrumBloc extends HydratedCubit<OstrumState> {
  OstrumBloc(this._repo) : super(const OstrumState());

  final OstrumRepository _repo;

  Future<void> fetchOstrum() async {
    emit(state.copyWith(
      isLoading: true,
    ));

    await futureTryCatch(
      () async {
        final data = await _repo.fetchComments();
        emit(state.copyWith(isLoading: false, comments: data));
      },
      onError: (error) {
        emit(state.copyWith(error: true, isLoading: false));
      },
    );
  }

  void reset() {
    emit(const OstrumState());
  }

  /// Clear cached hydrated state
  Future<void> clearCache() async {
    await HydratedBloc.storage.delete('OstrumBloc');
  }

  @override
  OstrumState fromJson(Map<String, dynamic> json) => OstrumState.fromJson(json);

  @override
  Map<String, dynamic> toJson(OstrumState state) => state.toJson();
}
