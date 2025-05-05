import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';

class AppThemeInputDecoration {
  static final InputDecorationTheme inputDecorationLight = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.darkerWhite,
    prefixIconColor: AppColors.lighterGray,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.lighterGray),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.lighterGray),
    ),
    hintStyle: AppThemeTextStyles.lightTextTheme.bodyMedium!.copyWith(
      color: AppColors.lighterGray,
    ),
    counterStyle: AppThemeTextStyles.lightTextTheme.bodyMedium!.copyWith(
      color: AppColors.lighterGray,
    ),
  );
  static final InputDecorationTheme inputDecorationDark = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.darkGray,
    prefixIconColor: AppColors.lighterGray,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.black),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.lighterGray),
    ),
    hintStyle: TextStyle(
      color: AppColors.lightGray,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),
  );
}
