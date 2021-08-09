import 'package:eshop_app/src/hive_Models/favoriteProducts.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProductManageController extends GetxController {
  final favoriteBox = Hive.box<FavoriteProducts>('favoriteProducts');
  manageFavorite({required Map<String, dynamic> product}) async {
    if (favoriteBox.containsKey(product['id'])) {
      favoriteBox.delete(product['id']);
    } else {
      final data = FavoriteProducts(
          id: product['id'],
          discount: product['discount'],
          price: product['price'],
          rating: product['rating'],
          title: product['title']);
      await favoriteBox.put(product['id'], data);
    }
  }
}
