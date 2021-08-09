import 'package:eshop_app/src/services/serviceController.dart';
import 'package:eshop_app/src/widgets/kText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  final _ = Get.put(ServiceController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => _.cartC.carts.isEmpty
            ? Center(
                child: KText(
                  text: 'No Carts',
                  fontSize: 20,
                ),
              )
            : ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: _.cartC.carts.length,
                          itemBuilder: (BuildContext context, int index) {
                            final item = _.cartC.carts[index];
                            return Container(
                              height: 80,
                              width: Get.width,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/shoes_2.png',
                                        scale: 10,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      KText(
                                        text: item.title,
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      Spacer(),
                                      KText(
                                        text: '\$${item.price}',
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          _.cartC.deleteCarts(id: item.id);
                                        },
                                        icon: Icon(
                                          Icons.delete_outlined,
                                          size: 25,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
