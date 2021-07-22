import 'package:eshop_app/src/services/serviceController.dart';
import 'package:eshop_app/src/widgets/kText.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryComponent extends StatelessWidget {
  final _ = Get.put(ServiceController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: KText(
                  text: 'Our Product',
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              KText(
                text: 'short by',
                color: HexColor('BEBECB'),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
              ),
            ],
          ),
          Container(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemCount: _.shopC.category.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = _.shopC.category[index];
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              '${item['imagePath']}',
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            KText(
                              text: '${item['title']}',
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
