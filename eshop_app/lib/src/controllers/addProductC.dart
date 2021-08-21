import 'package:cloud_firestore/cloud_firestore.dart';

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
  void addProduct(
      //   {
      //   String? title,
      //   int? price,
      //   int? discount,
      //   int? rating,
      //   String? imageUrl,
      //   String? description,
      // }
      ) async {
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
}
