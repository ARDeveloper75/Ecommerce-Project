import 'dart:io';

import 'package:eshop_app/src/hive_Models/favoriteProducts.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:path_provider/path_provider.dart';

class HiveController extends GetxController {
  Future<void> initDatabase() async {
    Directory? appDocDir = await getApplicationDocumentsDirectory();

    Hive.init(appDocDir.path);
    await registerBoxesAndAdapters();
  }

  Future<void> registerBoxesAndAdapters() async {
    Hive.registerAdapter(FavoriteProductsAdapter());
    await Hive.openBox<FavoriteProducts>('favoriteProducts');
    print('Hive C Work');
  }
}
