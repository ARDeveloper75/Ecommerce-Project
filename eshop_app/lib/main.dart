import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/app.dart';
import 'src/controllers/hiveController.dart';

// final _ = Get.put(ServiceController(), permanent: true);

void main() async {
  await initAppConfig();
  runApp(App());
}

Future<void> initAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.put(HiveController(), permanent: true).initDatabase();
}
