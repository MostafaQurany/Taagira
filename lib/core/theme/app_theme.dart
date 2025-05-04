import 'package:flutter/material.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';
import 'package:taggira/core/theme/app_theme_input_decoration.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.darkerWhite,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.black,
        secondary: AppColors.white,
        onSecondary: AppColors.white,
        error: AppColors.red,
        onError: AppColors.red,
        surface: AppColors.primary,
        onSurface: AppColors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.black,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: AppThemeTextStyles.lightTextTheme,
      inputDecorationTheme: AppThemeInputDecoration.inputDecorationLight,
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
      iconTheme: IconThemeData(color: AppColors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(color: AppColors.lightGray, thickness: 1),

      listTileTheme: ListTileThemeData(
        titleTextStyle: AppThemeTextStyles.lightTextTheme.bodyLarge,
        subtitleTextStyle: AppThemeTextStyles.lightTextTheme.bodyMedium,
        iconColor: AppColors.black,
        textColor: AppColors.black,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.white,
        selectedColor: AppColors.primary,
        labelStyle: AppThemeTextStyles.lightTextTheme.bodyMedium,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkBackground,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primary,
        onPrimary: AppColors.black,
        secondary: AppColors.white,
        onSecondary: AppColors.white,
        error: AppColors.red,
        onError: AppColors.red,
        surface: AppColors.primary,
        onSurface: AppColors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: AppThemeTextStyles.darkTextTheme,
      inputDecorationTheme: AppThemeInputDecoration.inputDecorationDark,
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
      iconTheme: IconThemeData(color: AppColors.white),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(color: AppColors.lightGray, thickness: 1),
      listTileTheme: ListTileThemeData(
        titleTextStyle: AppThemeTextStyles.darkTextTheme.bodyLarge,
        subtitleTextStyle: AppThemeTextStyles.darkTextTheme.bodyMedium,
        iconColor: AppColors.white,
        textColor: AppColors.white,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.darkBackground,
        selectedColor: AppColors.primary,
        labelStyle: AppThemeTextStyles.darkTextTheme.bodyMedium,
      ),
    );
  }
}
