import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color blackColor = Color(0xFF242424);
  static const Color whiteColor = Color(0xFFF8F8F8);

  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color goldColor = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 32,
        color: blackColor,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: blackColor,
      ),
    ),
    dividerColor: lightPrimaryColor,
    
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimaryColor,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    
    textTheme: TextTheme(
      headlineSmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: blackColor,
      ),
      titleLarge: GoogleFonts.inder(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: blackColor,
      ),
      titleMedium: GoogleFonts.inder(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: blackColor,
      ),
    ),
  );

  //=========================Dark============================//

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 32,
        color: whiteColor,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: whiteColor,
      ),
    ),
    dividerColor: goldColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimaryColor,
      type: BottomNavigationBarType.shifting,
      selectedItemColor: goldColor,
      unselectedItemColor: whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      headlineSmall: GoogleFonts.elMessiri(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: whiteColor,
      ),
      titleLarge: GoogleFonts.inder(
        fontWeight: FontWeight.w400,
        fontSize: 25,
        color: whiteColor,
      ),
      titleMedium: GoogleFonts.inder(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: goldColor,
      ),
    ),
  );
}
