import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static const Color grey = Color(0xffDFDFDF);
  static const Color yellow = Color(0xffFFDB47);
  static const cardShadow = [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 6,
      spreadRadius: 2,
      offset: Offset(0, 2),
    ),
  ];

  static const buttonShadow = [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 3,
      spreadRadius: 2,
      offset: Offset(1, 3),
    ),
  ];

  static getCardDecoration() {
    BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
      boxShadow: CustomTheme.cardShadow,
    );
  }

  static ThemeData getTheme() {
    Map<String, double> fontSize = {
      'sm': 14,
      'ms': 16,
      'lg': 24,
    };

    return ThemeData(
      primaryColor: yellow,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        toolbarHeight: 79,
        centerTitle: true,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: yellow,
        unselectedLabelColor: Colors.black,
      ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.dmSans(
            color: Colors.black,
            fontSize: fontSize['lg'],
            fontWeight: FontWeight.bold),
        headlineMedium: GoogleFonts.dmSans(
            color: Colors.black,
            fontSize: fontSize['ms'],
            fontWeight: FontWeight.bold),
        headlineSmall: GoogleFonts.dmSans(
          color: Colors.black,
          fontSize: fontSize['sm'],
          fontWeight: FontWeight.bold,
        ),
        bodySmall: GoogleFonts.dmSans(
          fontSize: fontSize['sm'],
          fontWeight: FontWeight.normal,
        ),
        titleSmall: GoogleFonts.dmSans(
          letterSpacing: 1,
          fontSize: fontSize['sm'],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
