import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
part 'database.g.dart';

class DashboardItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get cmpCode => text()();
  TextColumn get uploadFlag => text()();
  IntColumn get moduleNo => integer().nullable()();
  TextColumn get applicationType => text()();
  TextColumn get moduleName => text()();
  TextColumn get screenName => text()();
  IntColumn get screenNo => integer().nullable()();
  BoolColumn get checked => boolean()();
  IntColumn get sequence => integer().nullable()();
}

@DriftDatabase(tables: [DashboardItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<DashboardItem>> getAllItems() => select(dashboardItems).get();
  Future<void> insertDashboardItem(DashboardItem item) async {
    await into(dashboardItems).insertOnConflictUpdate(DashboardItemsCompanion(
      cmpCode: Value(item.cmpCode),
      uploadFlag: Value(item.uploadFlag),
      moduleNo: Value(item.moduleNo),
      applicationType: Value(item.applicationType),
      moduleName: Value(item.moduleName),
      screenName: Value(item.screenName),
      screenNo: Value(item.screenNo),
      checked: Value(item.checked),
      sequence: Value(item.sequence),
    ));
  }

  Future<bool> isDatabaseEmpty() async {
    debugPrint('Checking Database.......');
    final count = await select(dashboardItems).get();
    debugPrint('Database is : ${count.isEmpty}.......');
    return count.isEmpty;
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File('${dbFolder.path}/drift_database.db');
    debugPrint('Path is : ${file.path}');
    return NativeDatabase(file);
  });
}
