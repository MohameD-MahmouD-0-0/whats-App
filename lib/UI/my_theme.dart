
import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static Color greyColor = Colors.grey;
  static Color greenColor = Colors.green;
  static Color whiteColor = Colors.white;
  static Color blackColor = Colors.black;
  static Color babyblueColor = Colors.lightBlue;
  static Color purbleColor = Colors.purpleAccent;
  static Color blueColor = Colors.blue;


  static ThemeData ligthMode=ThemeData(
    scaffoldBackgroundColor: whiteColor,
    primaryColor: whiteColor,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
    ),
    textTheme: TextTheme(
        displayLarge:TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor:whiteColor
      ,selectedItemColor: blackColor,
      unselectedItemColor: blackColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),

  );
}