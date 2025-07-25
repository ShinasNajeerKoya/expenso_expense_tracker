import 'package:drift/drift.dart';

import '../../../data/local_persistence/app_database.dart';
import '../../../data/local_persistence/drift_tables/announcement/announcement_table.dart';

part 'announcement_dao.g.dart';

@DriftAccessor(tables: [Announcements])
class AnnouncementDao extends DatabaseAccessor<AppDatabase> with _$AnnouncementDaoMixin {
  AnnouncementDao(super.db);

  Future<void> insertAnnouncements(List<AnnouncementsCompanion> list) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(announcements, list);
    });
  }

  Future<List<Announcement>> getAllAnnouncements() async {
    return await select(announcements).get();
  }

  Future<void> clearAnnouncements() async {
    await delete(announcements).go();
  }
}
