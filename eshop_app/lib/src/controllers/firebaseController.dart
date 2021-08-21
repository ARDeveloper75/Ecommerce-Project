import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:eshop_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirebaseController extends GetxController {
  final _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getProducts() {
    return _firestore.collection('products').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getCatagory() {
    return _firestore.collection('Catagorys').snapshots();
  }

// Catagory Added
  void addCatagorys() async {
    await _firestore.collection('Catagorys').add({
      'title': 'Shoes',
      'image': 'https://image.flaticon.com/icons/png/512/866/866692.png'
    });
    Get.snackbar('Succeed', 'Catagory Added');
    print('Catagory Added');
  }

// Deteled Catagory
//
  void deleteCatagorys({required String id}) async {
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
            await _firestore.collection('Catagorys').doc(id).delete();
            Get.back();
            Get.snackbar('Succeed', 'Catagory Deleted');
            print('Catagory delete');
          },
          child: KText(
            text: 'Confirm',
            color: Colors.red,
          ),
        ),
      ],
    );
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
}
