import 'dart:convert';

import 'package:driftdemo/Database/database.dart';
import 'package:driftdemo/gZipDecode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  List<DashboardItem> dashboardData = [];
  RxBool isLoading = false.obs;
  RxDouble progress = 0.0.obs;
  late AppDatabase _db;

  @override
  void onInit() {
    _db = AppDatabase();
    dataConversion();
    super.onInit();
  }

  dataConversion() async {
    debugPrint('Starting..............');
    isLoading.value = true;
    progress.value = 0.0;

    try {
      bool isEmpty = await _db.isDatabaseEmpty();

      if (isEmpty) {
        debugPrint('If Condition ...............');
        String jsonString = decodeGzipResponse(
            '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');
        List<dynamic> jsonList = jsonDecode(jsonString);
        const batchSize = 20;
        for (var i = 0; i < jsonList.length; i += batchSize) {
          final end = (i + batchSize < jsonList.length)
              ? i + batchSize
              : jsonList.length;
          final batch = jsonList.sublist(i, end);
          progress.value = i / jsonList.length;
          await Future.wait(
            batch.map((item) {
              return _db.insertDashboardItem(DashboardItem(
                id: jsonList.indexOf(item) + 1,
                cmpCode: item['cmpCode'],
                uploadFlag: item['uploadFlag'],
                moduleNo: item['moduleNo'],
                applicationType: item['applicationType'],
                moduleName: item['moduleName'],
                screenName: item['screenName'],
                screenNo: item['screenNo'],
                checked: item['checked'],
                sequence: item['sequence'],
              ));
            }),
          );
          await Future.delayed(const Duration(milliseconds: 100));
        }
        progress.value = 1.0;
      }
      await _loadItems();
    } catch (e) {
      debugPrint('Error during data conversion: $e');
    } finally {
      isLoading.value = false;
      debugPrint('Ending..............');
    }
  }

  Future<void> _loadItems() async {
    final items = await _db.getAllItems();
    dashboardData = items;
    debugPrint('Fetched ${dashboardData.length} items from the database.');
  }
}
