

import 'package:eureka/utils/color.dart';
import 'package:flutter/material.dart';

class TThemeLight{
  TThemeLight._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: EColor.white,
    useMaterial3: false,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: EColor.black,
          )
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: EColor.black,
          )
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: EColor.black,
        ),
      ),
      suffixIconColor: EColor.primaryColor,
      prefixIconColor: EColor.primaryColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: EColor.primaryColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: EColor.primaryColor,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
      )
    )
  );
}