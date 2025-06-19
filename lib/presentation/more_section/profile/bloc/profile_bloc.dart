import 'package:expenso_expense_tracker/domain/repositories/more_section/profile/profile_repository.dart';

import 'profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBloc extends Cubit<ProfileState> {
  ProfileBloc(this._repo) : super(const ProfileState());

  final ProfileRepository _repo;

  /// Add your business logic here
}
