import '../../models/announcement/announcement_model.dart';

abstract class AnnouncementRepository {
/// Add your repository logic here
  Future<List<AnnouncementModel>> fetchAnnouncements();
  Future<void> addAnnouncementViaFilePicker();
}
