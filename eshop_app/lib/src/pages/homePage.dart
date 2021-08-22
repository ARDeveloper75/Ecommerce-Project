import 'package:eshop_app/src/components/categoryComponent.dart';
import 'package:eshop_app/src/components/productComponent.dart';
import 'package:eshop_app/src/components/sidebarComponent.dart';
import 'package:eshop_app/src/pages/addProductPage.dart';
import 'package:eshop_app/src/pages/cartPage.dart';

import 'package:eshop_app/src/pages/productFavoritePage.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SidebarComponent(),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
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
        physics: NeverScrollableScrollPhysics(),
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
            InkWell(
              child: Icon(
                Icons.person_outline,
                color: Colors.black54,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
