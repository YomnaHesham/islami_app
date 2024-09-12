import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;

  SharedPreferences? prefs;

  changeTheme(ThemeMode themeMode) {
    mode = themeMode;
    setTheme(themeMode);
    notifyListeners();
  }

  Future setTheme(ThemeMode themeMode) async {
    prefs = await SharedPreferences.getInstance();
    String themeName = themeMode == ThemeMode.light ? "light" : "dark";
    await prefs!.setString('theme', themeName);
  }

  getTheme() async {
    prefs = await SharedPreferences.getInstance();

    final String? themeName = prefs!.getString('theme');

    if (themeName != null) {
      mode = themeName == "light" ? ThemeMode.light : ThemeMode.dark;
      notifyListeners();

    }
  }

}
