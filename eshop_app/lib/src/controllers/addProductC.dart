import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eshop_app/src/pages/editProductPage.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddProductController extends GetxController {
  final _firestore = FirebaseFirestore.instance;
  final title = ''.obs;
  final price = ''.obs;
  final discount = ''.obs;
  final rating = ''.obs;
  final imageUrl = ''.obs;
  final description = ''.obs;

  Stream<QuerySnapshot<Map<String, dynamic>>> getProducts() {
    return _firestore.collection('products').snapshots();
  }

  // Product Add
  void addProduct() async {
    await _firestore
        .collection('products')
        .add({
          'title': title.value,
          'price': price.value,
          'discount': discount.value,
          'rating': rating.value,
          'description': description.value,
        })
        .then((value) => print('Product Added'))
        .catchError((error) => print('Failed to added product: $error'));
  }
  // Deteled Product

  void deleteProduct({required String id}) {
    Get.defaultDialog(
      title: '',
      middleText: 'are you want to remove this item?',
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Get.back();
          },
          child: KText(
            text: 'Cancel',
            color: Colors.grey,
          ),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () async {
            await _firestore.collection('products').doc(id).delete();
            Get.back();
            Get.snackbar('Succeed', 'Product Deleted');
            print('product delete');
          },
          child: KText(
            text: 'Confirm',
            color: Colors.red,
          ),
        ),
      ],
    );
  }
  //update product

  // update product
  void updateProduct({required String id}) {
    Get.defaultDialog(
      title: '',
      middleText: 'are you want to remove this item?',
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () {
            Get.back();
          },
          child: KText(
            text: 'Cancel',
            color: Colors.grey,
          ),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: () async {
            await _firestore.collection('products').doc(id).update({
              // 'title': title.value,
              // 'price': price.value,
              // 'discount': discount.value,
              // 'rating': rating.value,
              // 'description': description.value,
            });
            await Get.to(EditProductPage());
            // Get.snackbar('Succeed', 'Product Update');
            print(' => update Product page');
          },
          child: KText(
            text: 'Update Product',
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
