import 'package:eshop_app/src/pages/homePage.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'addProductPage.dart';
import 'dashPage.dart';

// ignore: must_be_immutable
class DashboardPage extends StatelessWidget {
  final dashboardData = [
    {
      'title': 'All Posts',
    },
    {
      'title': 'All Carts',
    },
    {
      'title': 'All Orders',
    },
    {
      'title': 'All Payments',
    },
  ];
  List<IconData> icons = [
    Icons.post_add,
    EvaIcons.shoppingCartOutline,
    Icons.shop_2_outlined,
    Icons.attach_money,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0xFF4379C0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 10,
                      top: 10,
                      child: Container(
                        child: Row(
                          children: [
                            // KText(
                            //   text: 'Edit Profile',
                            //   color: Colors.white54,
                            // ),
                            Icon(
                              Icons.edit,
                              color: Colors.white70,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 20,
                      child: CircleAvatar(
                        backgroundColor: Colors.pink.shade100,
                        radius: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/image_3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 60,
                      child: KText(
                        text: 'Darlene Robertson',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 90,
                      child: KText(
                        text: 'Robertson2021@gmail.com',
                        fontSize: 12,
                        color: Colors.white54,
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 110,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          KText(
                            text: 'Active status',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                child: Container(
                  height: 70,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        spreadRadius: .20,
                        blurRadius: 40,
                        offset: Offset(10, 5),
                      ),
                    ],
                    // border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      KText(
                        text: 'Dashboard',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 35,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.dashboard_rounded,
                        size: 28,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 400,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0xFF4379C0),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          childAspectRatio: 1,
                        ),
                        shrinkWrap: true,
                        primary: false,
                        itemCount: dashboardData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = dashboardData[index];

                          return Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF3B90FF),
                                    spreadRadius: .20,
                                    blurRadius: 5,
                                    offset: Offset(5, 5),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  KText(
                                    text: '${item['title']}',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Icon(
                                    icons[index],
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: Get.width,
                decoration: BoxDecoration(
                  // color: Color(0xFF4379C0),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
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
              onTap: () => Get.to(DashPage()),
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
