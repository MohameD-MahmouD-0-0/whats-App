
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
  static Color kohlyColor = const Color(0xFF000811);


  static ThemeData ligthMode=ThemeData(
    scaffoldBackgroundColor: whiteColor,
    primaryColor: blueColor,
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
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: blackColor
        ),
      titleSmall: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
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
    primaryColor: blackColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: whiteColor),
      backgroundColor: kohlyColor,
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
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
        labelSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
        )

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor:kohlyColor
      ,selectedItemColor: whiteColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );


}