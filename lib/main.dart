import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:untitled/UI/my_theme.dart';
import 'package:untitled/provider.dart';

import 'UI/home-screen.dart';
import 'UI/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          // SplahScreen.routeName:(context)=>SplahScreen(),
          HomeScreen.routeName:(context)=>HomeScreen(),
        },
        theme: MyTheme.ligthMode,
        darkTheme: MyTheme.darkMode,

        themeMode: provider.themeMode,
      ) ,
    );
  }
}