import 'package:eshop_app/src/widgets/kText.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: .60,
              ),
              shrinkWrap: true,
              primary: false,
              itemCount: 4,
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
                                color: Colors.blue.shade100.withOpacity(.80),
                                borderRadius: BorderRadius.circular(18)),
                            child: Center(
                              child: KText(
                                text: '35%',
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
                                color: Colors.red.withOpacity(.8),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Icon(
                                EvaIcons.heart,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 20,
                            child: Column(
                              children: [
                                KText(
                                  text: 'Nike Air Max 20',
                                  fontFamily: 'Lato Regular',
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                KText(
                                  text: '\$ 2900.00',
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
                                      itemSize: 10,
                                      initialRating: 3,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
