import 'package:eshop_app/src/controllers/hiveController.dart';
import 'package:eshop_app/src/controllers/shopController.dart';
import 'package:get/get.dart';

class ServiceController extends GetxService {
  final hiveC = Get.put(HiveController(), permanent: true);
  final shopC = Get.put(ShopController(), permanent: true);
}
