import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:get/get.dart';

class FirebaseController extends GetxController {
  final _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getProducts() {
    return _firestore.collection('products').snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getCatagory() {
    return _firestore.collection('Catagorys').snapshots();
  }
}
