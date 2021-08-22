import 'package:eshop_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SidebarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        30,
      ),
      child: Container(
        width: 800,
        child: Drawer(
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
                        left: 130,
                        top: 80,
                        child: KText(
                          text: 'Darlene Robertson',
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Positioned(
                        left: 130,
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
      ),
    );
  }
}
