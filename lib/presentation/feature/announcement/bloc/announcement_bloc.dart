import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../domain/models/announcement/announcement_model.dart';
import 'announcement_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expenso_expense_tracker/domain/repositories/announcement/announcement_repository.dart';

class AnnouncementBloc extends Cubit<AnnouncementState> {
  AnnouncementBloc(this._repo) : super(const AnnouncementState());

  final AnnouncementRepository _repo;

  Future<void> fetchAnnouncements() async {
    emit(state.copyWith(isLoading: true));
    try {
      final response =
          await Supabase.instance.client.from('announcements').select().order('datetime', ascending: false);

      print('Fetched from Supabase: $response'); // 👈 Add this to debug

      final announcements = (response as List).map((e) => AnnouncementModel.fromJson(e)).toList();

      emit(state.copyWith(isLoading: false, announcements: announcements));
    } catch (e, st) {
      print('fetchAnnouncements error: $e\n$st');
      emit(state.copyWith(isLoading: false, error: true));
    }
  }

  Future<void> addNewAnnouncement() async {
    emit(state.copyWith(isLoading: true));
    try {
      await _repo.addAnnouncementViaFilePicker();
      await fetchAnnouncements(); // Refresh
    } catch (_) {
      emit(state.copyWith(isLoading: false, error: true));
    }
  }
}
