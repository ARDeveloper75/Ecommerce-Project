import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoryController extends GetxController {
  final _firestore = FirebaseFirestore.instance;
  final title = ''.obs;
  final image = ''.obs;

  Stream<QuerySnapshot<Map<String, dynamic>>> getCatagory() {
    return _firestore.collection('Catagorys').snapshots();
  }

  void addCatagorys() async {
    Get.snackbar('Succeed', 'Catagory Added');
    print('Catagory Added');
    await _firestore
        .collection('Catagorys')
        .add({
          'title': title.value,
          'image': image.value,
        })
        .then((value) => print('Catagory Added'))
        .catchError((error) => print('Failed to added Catagorys: $error'));
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
}
