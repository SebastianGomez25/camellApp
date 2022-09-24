import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 97, 159, 216);

  static final ThemeData temaClaro = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Color.fromARGB(252, 253, 254, 252),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));
}
