import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: 'assets/fonts/Lato-Bold.ttf',
    scaffoldBackgroundColor: HexColor('F7F7F7'),
    appBarTheme: AppBarTheme(
      backgroundColor: HexColor('F7F7F7'),
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black54,
      ),
    ),
  );
}
