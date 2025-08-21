import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'UI/home-screen.dart';
import 'UI/splash_screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplahScreen.routeName,
        routes: {
          SplahScreen.routeName:(context)=>SplahScreen(),
          HomeScreen.routeName:(context)=>HomeScreen(),
        },
      ) ,
    );
  }

}