import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';

class MyTextStyles {
  static String seymourOne = 'SeymourOne';
  static String openSans = 'OpenSans';

  static TextStyle seymourOneLarge(double fontSize, Color color) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: FontWeight.w700,
    color: color,
    fontFamily: seymourOne,
  );
  static TextStyle openSansLarge(double fontSize, Color color) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: FontWeight.w700,
    color: color,
    fontFamily: openSans,
  );
  static TextStyle seymourOneMedium(double fontSize, Color color) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: FontWeight.w500,
    color: color,
    fontFamily: seymourOne,
  );
  static TextStyle openSansMedium(double fontSize, Color color) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: FontWeight.w500,
    color: color,
    fontFamily: openSans,
  );
  static TextStyle seymourOneSmall(double fontSize, Color color) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: FontWeight.w400,
    color: color,
    fontFamily: seymourOne,
  );
  static TextStyle openSansSmall(double fontSize, Color color) => TextStyle(
    fontSize: fontSize.sp,
    fontWeight: FontWeight.w400,
    color: color,
    fontFamily: openSans,
  );
}

class AppThemeTextStyles {
  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: MyTextStyles.openSansLarge(30, AppColors.black),
    displayMedium: MyTextStyles.openSansLarge(22, AppColors.black),
    displaySmall: MyTextStyles.openSansLarge(18, AppColors.black),

    titleLarge: MyTextStyles.openSansLarge(30, AppColors.black),
    titleMedium: MyTextStyles.openSansLarge(22, AppColors.black),
    titleSmall: MyTextStyles.openSansLarge(18, AppColors.black),

    headlineLarge: MyTextStyles.openSansMedium(24, AppColors.black),
    headlineMedium: MyTextStyles.openSansMedium(20, AppColors.black),
    headlineSmall: MyTextStyles.openSansMedium(16, AppColors.black),
    bodyLarge: MyTextStyles.openSansSmall(20, AppColors.black),
    bodyMedium: MyTextStyles.openSansSmall(14, AppColors.black),
    bodySmall: MyTextStyles.openSansSmall(12, AppColors.black),
  );
  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: MyTextStyles.openSansLarge(30, AppColors.white),
    displayMedium: MyTextStyles.openSansLarge(22, AppColors.white),
    displaySmall: MyTextStyles.openSansLarge(18, AppColors.white),
    titleLarge: MyTextStyles.openSansLarge(30, AppColors.white),
    titleMedium: MyTextStyles.openSansLarge(22, AppColors.white),
    titleSmall: MyTextStyles.openSansLarge(18, AppColors.white),
    headlineLarge: MyTextStyles.openSansMedium(24, AppColors.white),
    headlineMedium: MyTextStyles.openSansMedium(20, AppColors.white),
    headlineSmall: MyTextStyles.openSansMedium(16, AppColors.white),
    bodyLarge: MyTextStyles.openSansSmall(20, AppColors.white),
    bodyMedium: MyTextStyles.openSansSmall(14, AppColors.white),
    bodySmall: MyTextStyles.openSansSmall(12, AppColors.white),
  );
}
