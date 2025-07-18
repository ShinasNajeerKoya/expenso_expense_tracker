import 'dart:io';

import 'package:expenso_expense_tracker/domain/repositories/announcement/announcement_repository.dart';
import 'package:path/path.dart';

import '../../../data/remote_persistance/supabase/supabase_announcement_helper.dart';
import '../../../shared/helper_functions/file_picker_helper/file_picker_helper.dart';
import '../../models/announcement/announcement_model.dart';

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  @override
  Future<List<AnnouncementModel>> fetchAnnouncements() async {
    final data = await SupabaseAnnouncementHelper.fetchAnnouncements();
    return data.map((e) => AnnouncementModel.fromJson(e)).toList();
  }

  // @override
  // Future<void> addAnnouncementViaFilePicker() async {
  //   final picked = await FilePickerHelper.pickImageFromGallery();
  //   if (picked == null) throw Exception('No image picked');
  //
  //   final file = picked['file'] as File;
  //   final fileName = picked['fileName'] as String;
  //
  //   final imageUrl = await SupabaseAnnouncementHelper.uploadAnnouncementImage(
  //     file: file,
  //     fileName: fileName,
  //   );
  //
  //   if (imageUrl == null) throw Exception('Upload failed');
  //
  //   // For demo: use dummy title/subtitle
  //   await SupabaseAnnouncementHelper.addAnnouncement(
  //     title: 'New Announcement',
  //     subtitle: 'Uploaded from FAB',
  //     imageUrl: imageUrl,
  //     datetime: DateTime.now(),
  //   );
  // }

  @override
  Future<void> addAnnouncementViaFilePicker() async {
    try {
      final file = await LocalAssetHelper.getImageFileFromAssets(
        'assets/test_images/test_2.png',
      );

      final fileName = basename(file.path);
      print('Loaded asset file: $fileName');

      final imageUrl = await SupabaseAnnouncementHelper.uploadAnnouncementImage(
        file: file,
        fileName: fileName,
      );

      if (imageUrl == null) throw Exception('Upload failed');

      await SupabaseAnnouncementHelper.addAnnouncement(
        title: 'Asset Demo Title',
        subtitle: 'Loaded from local assets',
        imageUrl: imageUrl,
        datetime: DateTime.now(),
      );
    } catch (e, st) {
      print('addAnnouncementViaFilePicker error: $e\n$st');
      rethrow; // let Bloc handle this as error state
    }
  }
}
