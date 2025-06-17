import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import '../../presentation/add_card/utils/card_design_type_extension.dart';
import '../../presentation/add_card/utils/card_type_extensions.dart';
import 'converters/add_card_model_converter_extensions.dart';
import 'drift_tables/card_details_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [CardsDetails])
class AppDatabase extends _$AppDatabase {
  AppDatabase._internal() : super(_openConnection());

  // Singleton pattern
  static final AppDatabase _instance = AppDatabase._internal();
  static AppDatabase get instance => _instance;

  @override
  int get schemaVersion => 1;

  // You can run migrations here if needed
  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) => m.createAll(),
        onUpgrade: (m, from, to) async {
          // handle migrations
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'app.sqlite'));
    return NativeDatabase(
      file,
      logStatements: true,
    );
  });
}
