import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider.dart';
import 'home-screen.dart';

class SplahScreen extends StatelessWidget{

  static const String routeName='splash_screen';
  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context,HomeScreen.routeName);
    }
    );
    return Scaffold(
      body: provider.themeMode==ThemeMode.light?
      Image.asset('assets/images/whatsapp-splash-lightmood.jpg',fit: BoxFit.cover,):
      Image.asset('assets/images/splashScreenDarkMode.png',fit: BoxFit.cover,)
    );
  }
}