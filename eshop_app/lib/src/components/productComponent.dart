import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eshop_app/src/hive_Models/favoriteProducts.dart';
import 'package:eshop_app/src/pages/singleProductPage.dart';
import 'package:eshop_app/src/services/serviceController.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProductComponent extends StatelessWidget {
  final _ = Get.put(ServiceController(), permanent: true);

  // Time 1.3.11

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                stream: _.firebaseC.getProducts(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return placeHolder();
                  }
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      childAspectRatio: .60,
                    ),
                    shrinkWrap: true,
                    primary: false,
                    itemCount: snapshot.data!.size,
                    itemBuilder: (BuildContext context, int index) {
                      final item = snapshot.data!.docs[index].data();
                      final favoriteBox =
                          Hive.box<FavoriteProducts>('favoriteProducts');
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () => Get.to(
                            () => SingleProductPage(
                              item: item,
                            ),
                          ),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Colors.blue.shade100.withOpacity(.80),
                                  radius: 65,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 58,
                                ),
                                CircleAvatar(
                                  backgroundColor:
                                      Colors.blue.shade100.withOpacity(.80),
                                  radius: 56,
                                ),
                                Positioned(
                                  top: 12,
                                  left: 12,
                                  child: Container(
                                    padding: EdgeInsets.all(4),
                                    height: 22,
                                    width: 42,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade100
                                            .withOpacity(.80),
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: Center(
                                      child: KText(
                                        text: '${item['discount']}%',
                                        color: Colors.black54,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 12,
                                  right: 12,
                                  child: GestureDetector(
                                    onTap: () => _.productManageC
                                        .manageFavorite(product: item),
                                    child: ValueListenableBuilder(
                                      builder: (BuildContext context, value,
                                          Widget? child) {
                                        return Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: favoriteBox
                                                      .containsKey(item['id'])
                                                  ? Colors.red.withOpacity(.8)
                                                  : Colors.grey.withOpacity(.8),
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(
                                              favoriteBox
                                                      .containsKey(item['id'])
                                                  ? EvaIcons.heart
                                                  : EvaIcons.heartOutline,
                                              size: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        );
                                      },
                                      valueListenable: favoriteBox.listenable(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  child: Column(
                                    children: [
                                      KText(
                                        text: '${item['title']}',
                                        fontFamily: 'Lato Regular',
                                        fontSize: 13,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      KText(
                                        text: '\$${item['price']}',
                                        fontFamily: 'Lato Bold',
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            itemSize: 12,
                                            initialRating: double.parse(
                                                '${item['rating']}'),
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          Text(
                                            '(${item['rating']})',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget placeHolder() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        childAspectRatio: .60,
      ),
      shrinkWrap: true,
      primary: false,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.shade100.withOpacity(.80),
                    radius: 65,
                  ),
                ),
                Positioned(
                  top: 67,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 58,
                  ),
                ),
                Positioned(
                  top: 69,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.shade100.withOpacity(.80),
                    radius: 56,
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    height: 22,
                    width: 42,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade100.withOpacity(.80),
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                      child: KText(
                        text: '',
                        color: Colors.black54,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.8),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        EvaIcons.heartOutline,
                        size: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  bottom: 20,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        height: 10,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100.withOpacity(.50),
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: KText(
                            text: '',
                            color: Colors.black54,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        height: 10,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100.withOpacity(.50),
                            borderRadius: BorderRadius.circular(18)),
                        child: Center(
                          child: KText(
                            text: '',
                            color: Colors.black54,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 12,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
