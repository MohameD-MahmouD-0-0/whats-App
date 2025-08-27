
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
  static Color kohlyColor = const Color(0xFF000814);


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
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      titleSmall: TextStyle(
        fontSize: 18,
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
  static ThemeData darkMode=ThemeData(
    scaffoldBackgroundColor: kohlyColor,
    primaryColor: kohlyColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    textTheme: TextTheme(
      displayLarge:TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor:kohlyColor
      ,selectedItemColor: whiteColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}