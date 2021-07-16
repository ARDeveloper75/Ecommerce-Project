import 'package:eshop_app/src/configs/appTheme.dart';
import 'package:eshop_app/src/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
