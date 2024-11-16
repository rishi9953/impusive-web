import 'package:driftdemo/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: controller.progress.value,
                ),
                const SizedBox(height: 16),
                Text(
                  'Loading... ${(controller.progress.value * 100).toStringAsFixed(1)}%',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        }
        return ListView.builder(
          itemCount: controller.dashboardData.length,
          itemBuilder: (context, index) {
            var data = controller.dashboardData[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                  leading: Text('${index + 1}'),
                  tileColor: data.checked
                      ? Colors.green.shade100
                      : Colors.red.shade100,
                  title: Text(data.moduleName),
                  subtitle: Text(data.screenName),
                  trailing: Text('${data.screenNo}'),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
