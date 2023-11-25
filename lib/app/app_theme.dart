import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.lightThemeSeedColor,
    ),
  );
}

class AppColors {
  static const lightThemeSeedColor = Color(0xFFD61107);
}
