import 'package:hive/hive.dart';

part 'favoriteProducts.g.dart';

@HiveType(typeId: 1)
class FavoriteProducts {
  @HiveField(0)
  int discount;

  //----------------------------------------------------------
  @HiveField(1)
  String title;
  //----------------------------------------------------------
  @HiveField(2)
  double price;
  //----------------------------------------------------------
  @HiveField(3)
  double rating;

  FavoriteProducts({
    required this.discount,
    required this.price,
    required this.rating,
    required this.title,
  });
}
