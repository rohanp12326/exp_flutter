import 'package:flutter/material.dart';
import 'package:my_project/core/constants/app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      background: AppColors.scaffoldBg,
      surface: AppColors.onPrimary,
      onPrimary: AppColors.onPrimary,
      onSecondary: AppColors.onPrimary,
      onBackground: AppColors.textPrimary,
      onSurface: AppColors.textPrimary,
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBg,
  );
}
