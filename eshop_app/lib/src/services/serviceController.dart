import 'package:eshop_app/src/controllers/cartController.dart';
import 'package:eshop_app/src/controllers/firebaseController.dart';
import 'package:eshop_app/src/controllers/hiveController.dart';
import 'package:eshop_app/src/controllers/productManageController.dart';
import 'package:eshop_app/src/controllers/shopController.dart';
import 'package:get/get.dart';

class ServiceController extends GetxService {
  final hiveC = Get.put(HiveController(), permanent: true);
  final shopC = Get.put(ShopController(), permanent: true);
  final cartC = Get.put(CartController(), permanent: true);
  final firebaseC = Get.put(FirebaseController(), permanent: true);
  final productManageC = Get.put(ProductManageController(), permanent: true);
}
