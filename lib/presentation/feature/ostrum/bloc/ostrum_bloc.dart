import 'ostrum_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expenso_expense_tracker/domain/repositories/ostrum/ostrum_repository.dart';

class OstrumBloc extends Cubit<OstrumState> {
  OstrumBloc(this._repo) : super(const OstrumState());

  final OstrumRepository _repo;

  /// Add your business logic here
}
