import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/app.dart';
import 'src/controllers/hiveController.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await initAppConfig();
  runApp(App());
}

Future<void> initAppConfig() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();
  await Get.put(HiveController(), permanent: true).initDatabase();
}

Future<void> initFirebase() async {
  await Firebase.initializeApp();
  print('FireBase Work');
}
