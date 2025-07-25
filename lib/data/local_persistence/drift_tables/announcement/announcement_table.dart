import 'package:drift/drift.dart';

class Announcements extends Table {
  IntColumn get id => integer()(); // Same as Supabase ID
  TextColumn get title => text()();
  TextColumn get subtitle => text().named('sub_title')();
  TextColumn get imageUrl => text().named('image_url')();
  DateTimeColumn get datetime => dateTime()();
  DateTimeColumn get createdAt => dateTime().named('created_at')();

  @override
  Set<Column> get primaryKey => {id}; // Ensure no duplicates
}
