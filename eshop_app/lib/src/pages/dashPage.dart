import 'package:eshop_app/src/pages/homePage.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'addProductPage.dart';

class DashPage extends StatelessWidget {
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
                color: Color(0xFF4379C0),
                child: Stack(
                  children: [
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
                      top: 88,
                      child: KText(
                        text: 'Robertson2021@gmail.com',
                        fontSize: 12,
                        color: Colors.white54,
                      ),
                    ),
                    Positioned(
                      left: 140,
                      top: 105,
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
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: KText(text: 'Catagorys'),
                leading: Icon(Icons.category_sharp),
              ),
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
