import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.scaffoldBackGround,
  );
}
