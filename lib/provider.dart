import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  void changeThemeMode(ThemeMode mode) {
    if (themeMode == mode) return;
    themeMode = mode;
    notifyListeners();
  }
}
