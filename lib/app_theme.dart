import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);
  static const Color whiteColor = Color(0xFFF8F8F8);

  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color goldColor = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimaryColor,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: whiteColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimaryColor,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: goldColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );
}
