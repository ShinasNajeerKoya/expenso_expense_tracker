import 'announcement_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expenso_expense_tracker/domain/repositories/announcement/announcement_repository.dart';

class AnnouncementBloc extends Cubit<AnnouncementState> {
  AnnouncementBloc(this._repo) : super(const AnnouncementState());

  final AnnouncementRepository _repo;

  /// Add your business logic here
}
