import 'package:eshop_app/src/pages/cartPage.dart';
import 'package:eshop_app/src/pages/productFavoritePage.dart';
import 'package:eshop_app/src/services/serviceController.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SingleProductPage extends StatelessWidget {
  final _ = Get.put(ServiceController(), permanent: true);
  final Map<String, dynamic> item;
  SingleProductPage({required this.item});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Text(
                'X',
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontFamily: 'Lato Regular',
                  fontSize: 25,
                ),
              ),
              Text(
                'E',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontFamily: 'Lato Regular',
                  fontSize: 25,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(ProductFavoritePage());
              },
              icon: Icon(
                EvaIcons.heart,
                color: Colors.red,
                size: 23,
              ),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => CartPage());
              },
              icon: _.cartC.carts.isEmpty
                  ? Icon(Icons.shopping_cart_outlined)
                  : Icon(
                      EvaIcons.shoppingCart,
                      size: 23,
                      color: _.cartC.carts.isEmpty ? Colors.grey : Colors.green,
                    ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 25),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.pink.shade100,
                        radius: 170,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 168,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.pink.shade100,
                        radius: 135,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 133,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.pink.shade100.withOpacity(.80),
                        radius: 102,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.pink.shade50.withOpacity(.3090),
                        radius: 65,
                      ),
                      Positioned(
                        child: Image.asset(
                          'assets/images/shoes_2.png',
                          scale: 3,
                        ),
                      ),
                      Positioned(
                        top: 1,
                        child: Container(
                          height: 40,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 30,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -17,
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 30,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(left: 175, right: 175),
                          child: Center(
                            child: KText(
                              text: '30%',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        child: Container(
                          height: 40,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 30,
                                blurRadius: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        child: Image.asset(
                          'assets/images/bottom_row.png',
                          color: Colors.blue.shade200,
                          scale: 1.50,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 325,
                      width: 400,
                      decoration: BoxDecoration(
                        color: HexColor('F7F7F7'),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 30,
                        ),
                        child: Row(
                          children: [
                            KText(
                              text: item['title'],
                              fontSize: 30,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold,
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.orange.shade400,
                            ),
                            KText(
                              text: '(${item['rating']})',
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 40,
                        ),
                        child: KText(
                          text: item['description'],
                          fontSize: 15,
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 20,
                      child: Container(
                        height: 40,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: KText(
                                text: 'Size:',
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: KText(
                                  text: 'US 6',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 55,
                              child: Center(
                                child: KText(
                                  text: 'US 7',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 55,
                              child: Center(
                                child: KText(
                                  text: 'US 8',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 55,
                              child: Center(
                                child: KText(
                                  text: 'US 9',
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 30,
                      child: Container(
                        height: 60,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: KText(
                                text: 'Available Color:',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.orange.shade100,
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.orange,
                                    radius: 14,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.red.shade100,
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 14,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.pink.shade100,
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.pink,
                                    radius: 14,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue.shade100,
                                    radius: 20,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -5,
                      child: Container(
                        height: 90,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 25, right: 25),
                          child: Row(
                            children: [
                              KText(
                                text: '\$',
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              KText(
                                text: '${item['price']}',
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              Spacer(),
                              Container(
                                height: 45,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: _.cartC.checkCartExist(id: item['id'])
                                      ? Colors.green
                                      : HexColor('F7F7F7'),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextButton.icon(
                                  onPressed: () {
                                    _.cartC.addToCart(item: item);
                                  },
                                  icon: Icon(
                                    _.cartC.checkCartExist(id: item['id'])
                                        ? Icons.done
                                        : Icons.add_shopping_cart_outlined,
                                    color:
                                        _.cartC.checkCartExist(id: item['id'])
                                            ? Colors.white
                                            : Colors.blue.shade900,
                                  ),
                                  label: KText(
                                    text: _.cartC.checkCartExist(id: item['id'])
                                        ? 'Cart Added'
                                        : 'Add To Cart',
                                    fontSize: 15,
                                    color:
                                        _.cartC.checkCartExist(id: item['id'])
                                            ? Colors.white
                                            : Colors.blue.shade900,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
