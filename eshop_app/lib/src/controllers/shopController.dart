import 'package:get/get.dart';

class ShopController extends GetxController {
  final category = [
    {'title': 'Food', 'imagePath': 'assets/images/food.png'},
    {'title': 'Vegetable', 'imagePath': 'assets/images/vegetable.png'},
    {'title': 'Shoes', 'imagePath': 'assets/images/shoes.png'},
    {'title': 'Bags', 'imagePath': 'assets/images/bags.png'},
    {'title': 'Fork', 'imagePath': 'assets/images/fork.png'},
    {'title': 'Laptop', 'imagePath': 'assets/images/laptop.png'},
    {'title': 'T-shirt', 'imagePath': 'assets/images/tshirt.png'},
    {'title': 'Juwelary', 'imagePath': 'assets/images/necklace.png'},
  ];
  final products = [
    {
      'id': '3c2695e4-becb-4fa2-9061-b74c6e064a3f',
      'title': 'Nike Shoe 1',
      'discount': 45,
      'price': 290.00,
      'rating': 4.3,
    },
    {
      'id': '0b47e1f1-762d-40f2-945d-a80391693f9e',
      'title': 'Nike Shoe 2',
      'discount': 41,
      'price': 440.00,
      'rating': 2.5,
    },
    {
      'id': '329bcfcd-2a61-4d3d-b29d-581fee0269a6',
      'title': 'Nike Shoe 3',
      'discount': 20,
      'price': 330.00,
      'rating': 5.0,
    },
    {
      'id': '0c187de8-4f3a-4da8-839a-4186ea6d52d9',
      'title': 'Nike Shoe 4',
      'discount': 10,
      'price': 403.00,
      'rating': 2.8,
    },
  ];
}
