import 'package:eshop_app/src/services/serviceController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/app.dart';

final _ = Get.put(ServiceController(), permanent: true);

void main() async {
  await initAppConfig();
  runApp(App());
}

Future<void> initAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  _.hiveC.initDatabase();
}
