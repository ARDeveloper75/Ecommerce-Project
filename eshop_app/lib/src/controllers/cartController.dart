import 'package:eshop_app/src/models/cart.dart';

import 'package:eshop_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart' show IterableExtension;

class CartController extends GetxController {
  final carts = RxList<Cart>();
  void addToCart({required Map<String, dynamic> item}) async {
    final cartItem = Cart(
      id: item['id'],
      title: item['title'],
      image: 'N/A',
      price: item['price'],
      quantity: 1,
    );
    carts.add(cartItem);
    await Future.delayed(Duration(seconds: 2));
    Get.snackbar('Succuessfully', 'Product Added');
    // Get.to(() => CartPage());
  }

  bool checkCartExist({required String id}) {
    final cart = carts.singleWhereOrNull(
      (cart) => cart.id == id,
    );
    if (cart != null) {
      return true;
    }
    return false;
  }

  void deleteCarts({required String id}) async {
    Get.defaultDialog(
      title: 'Are you sure',
      titleStyle: TextStyle(fontFamily: 'Lato Bold'),
      middleText: 'want to remove this cart?',
      actions: [
        FlatButton(
          onPressed: () {
            Get.back();
          },
          child: KText(
            text: 'Cancel',
            color: Colors.grey,
          ),
        ),
        FlatButton(
          onPressed: () {
            // Get.snackbar('Succuessfully', 'Cart remove');
            carts.removeWhere((item) => item.id == id);
            Get.back();
          },
          child: KText(
            text: 'Confirm',
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
