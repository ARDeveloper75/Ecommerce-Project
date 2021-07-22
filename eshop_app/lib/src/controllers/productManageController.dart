import 'package:eshop_app/src/hive_Models/favoriteProducts.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProductManageController extends GetxController {
  final favoriteBox = Hive.box<FavoriteProducts>('FavoriteProducts');

  manageFavorite({required String id}) {
    final data = FavoriteProducts(
        discount: 45, price: 70, rating: 3.6, title: 'Nike Shoes');
    favoriteBox.put(id, data);
  }
}
