import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    // brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: blueSapphire,
      brightness: Brightness.light,
      primary: blueSapphire,
    ),
    // primarySwatch: Colors.blue,
    fontFamily: 'GoogleFonts',
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      labelLarge: GoogleFonts.poppins(color: blueSapphire),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: blueSapphire,
      brightness: Brightness.dark,
      primary: blueSapphire,
    ),
    // primarySwatch: Colors.blue,
    fontFamily: 'GoogleFonts',
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: GoogleFonts.poppins(color: Colors.blue),
      displayMedium: GoogleFonts.poppins(color: Colors.green),
      displaySmall: GoogleFonts.poppins(color: Colors.orange),
      headlineLarge: GoogleFonts.poppins(color: Colors.purple),
      headlineMedium: GoogleFonts.poppins(color: Colors.teal),
      headlineSmall: GoogleFonts.poppins(color: Colors.redAccent),
      titleLarge: GoogleFonts.poppins(color: Colors.indigo),
      titleMedium: GoogleFonts.poppins(color: Colors.lime),
      titleSmall: GoogleFonts.poppins(color: Colors.pinkAccent),
      bodyLarge: GoogleFonts.poppins(color: Colors.white),
      bodyMedium: GoogleFonts.poppins(color: Colors.white),
      bodySmall: GoogleFonts.poppins(color: Colors.white),
      labelLarge: GoogleFonts.poppins(color: blueSapphire),
      labelMedium: GoogleFonts.poppins(color: Colors.deepPurpleAccent),
      labelSmall: GoogleFonts.poppins(color: Colors.yellow),
    ),
  );
}

const Color white = Colors.white;
const Color black = Colors.black;
// const Color colorSchemeSeed = Color(0xff70d0d1);
const Color facebookDarkBlue = Color(0xff0165E1);
const Color facebookLightBlue = Color(0xff17A9FD);
const Color blueSapphire = Color(0xff0f52ba);
