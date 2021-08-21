import 'package:eshop_app/src/components/categoryComponent.dart';
import 'package:eshop_app/src/components/productComponent.dart';
import 'package:eshop_app/src/pages/addProductPage.dart';
import 'package:eshop_app/src/pages/cartPage.dart';
import 'package:eshop_app/src/pages/productFavoritePage.dart';
import 'package:eshop_app/src/services/serviceController.dart';
import 'package:eshop_app/src/widgets/kText.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  final _ = Get.put(ServiceController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            child: IconButton(
              onPressed: () {
                _.addProductC.addProduct();
              },
              icon: Icon(Icons.add),
            ),
          ),
          Container(
            color: Colors.green,
            child: IconButton(
              onPressed: () {
                _.firebaseC.addCatagorys();
              },
              icon: Icon(
                Icons.contact_page_outlined,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Get.to(ProductFavoritePage());
              },
              title: KText(
                text: 'Favorite Products',
                fontSize: 20,
              ),
              leading: Icon(
                EvaIcons.heart,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.format_align_center),
        ),
        title: Row(
          children: [
            SizedBox(
              width: 110,
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
            icon: Icon(
              EvaIcons.shoppingCartOutline,
              size: 23,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoryComponent(),
            ProductComponent(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(HomePage());
              },
              child: Container(
                height: 60,
                width: 50,
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 60,
                width: 50,
                child: Icon(
                  Icons.credit_card_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(AddProductPage());
              },
              child: Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  color: HexColor('3D4584'),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Container(
              height: 60,
              width: 50,
              child: Icon(
                Icons.attach_money_outlined,
                color: Colors.black54,
                size: 30,
              ),
            ),
            Icon(
              Icons.person_outline,
              color: Colors.black54,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
