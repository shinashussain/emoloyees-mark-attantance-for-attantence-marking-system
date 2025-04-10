// lib/utils/theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme textTheme = TextTheme(
    titleMedium: GoogleFonts.rubik(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      height: 1.4,
      letterSpacing: 0.5,
    ),
    bodyMedium: GoogleFonts.rubik(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
      height: 1.5,
      letterSpacing: 0.25,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: textTheme,
    primarySwatch: Colors.indigo,
  );
}
