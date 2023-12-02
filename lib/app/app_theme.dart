import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.lightThemeSeedColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: UnderlineInputBorder(),
      focusedBorder: UnderlineInputBorder(),
      enabledBorder: UnderlineInputBorder(),
      iconColor: AppColors.lightThemeSeedColor,
      prefixIconColor: AppColors.lightThemeSeedColor,
      suffixIconColor: AppColors.lightThemeSeedColor,
    ),
  );
}

class AppColors {
  static const white = Color(0xFFFFFFFF);
  //
  static const lightThemeSeedColor = Color(0xFFD61107);
  static const lightThemebuttonGreen = Color(0xFF2E9C1C);
}
