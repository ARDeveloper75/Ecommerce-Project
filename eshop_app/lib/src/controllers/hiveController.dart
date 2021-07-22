import 'dart:io';

import 'package:eshop_app/src/hive_Models/favoriteProducts.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:path_provider/path_provider.dart';

class HiveController extends GetxController {
  initDatabase() async {
    Directory? appDocDir = await getApplicationDocumentsDirectory();

    await Hive.initFlutter(appDocDir.path);
    await registerBoxesAndAdapters();
  }

  Future<void> registerBoxesAndAdapters() async {
    await Hive.openBox<FavoriteProducts>('favoriteProducts');
    Hive.registerAdapter(FavoriteProductsAdapter());
    print('Hive Initilized');
  }
}
