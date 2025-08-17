import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppTheme {
  static final ThemeData lightTheme =
      ThemeData.dark(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.quicksandTextTheme().apply(
            bodyColor: Colors.blue.shade900,
            displayColor: Colors.blue,
          ));
}
