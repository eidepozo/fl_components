import 'package:flutter/material.dart'
    show ThemeData, Color, Colors, AppBarTheme, TextButtonThemeData, TextButton;

class AppThemes {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));
}
