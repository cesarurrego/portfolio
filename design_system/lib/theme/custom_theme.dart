import 'package:design_system/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: LightThemeColors.secondary,
      scaffoldBackgroundColor: Colors.white,
      //fontFamily: 'Montserrat',
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        buttonColor: LightThemeColors.primary,
      ),
      iconTheme: const IconThemeData(
        color: LightThemeColors.primary,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: DarkThemeColors.secondary,
      scaffoldBackgroundColor: DarkThemeColors.background,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: DarkThemeColors.white),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        buttonColor: DarkThemeColors.primary,
      ),
      iconTheme: const IconThemeData(
        color: DarkThemeColors.secondary,
      ),
    );
  }
}
