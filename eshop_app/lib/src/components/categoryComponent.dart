import 'package:cloud_firestore/cloud_firestore.dart';
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
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              // stream: _.addCatagoryC.getCatagory(),
              builder: (context, snapshot) {
                return ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: snapshot.data!.size,
                  itemBuilder: (BuildContext context, int index) {
                    final item = snapshot.data!.docs[index];
                    final id = snapshot.data!.docs[index].id;
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onDoubleTap: () {
                          _.addCatagoryC.deleteCatagorys(id: id);
                        },
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
                                Image.network(
                                  '${item['image']}',
                                  width: 35,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                KText(
                                  text: '${item['title']}',
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
