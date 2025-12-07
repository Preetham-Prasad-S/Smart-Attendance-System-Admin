import 'package:flutter/material.dart';

final class AppTheme {
  static final ThemeData lightTheme = ThemeData(useMaterial3: true).copyWith(
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme().apply(
        bodyColor: Colors.blue.shade900,
        displayColor: Colors.blue,
      ));
}
