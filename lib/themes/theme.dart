import 'package:cinebox_app/themes/app_colors.dart';
import 'package:cinebox_app/themes/app_typography.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData get theme => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.white),
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      titleTextStyle: AppTypography.semiBoldMedium.copyWith(
        color: AppColors.black,
      ),
    ),
  );
}
