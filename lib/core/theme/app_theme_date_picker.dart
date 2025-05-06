import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';

final lightDatePickerTheme = DatePickerThemeData(
  backgroundColor: Colors.black,
  dividerColor: AppColors.primary,
  headerBackgroundColor: AppColors.primary,
  headerForegroundColor: AppColors.primary,
  headerHeadlineStyle: AppThemeTextStyles.lightTextTheme.headlineMedium!
      .copyWith(color: AppColors.primary),
  dayForegroundColor: const WidgetStatePropertyAll(Colors.black),
  dayBackgroundColor: const WidgetStatePropertyAll(Colors.white),
  weekdayStyle: AppThemeTextStyles.lightTextTheme.bodyMedium!.copyWith(
    color: AppColors.primary,
  ),
  
  todayForegroundColor: const WidgetStatePropertyAll(Colors.white),
  todayBackgroundColor: const WidgetStatePropertyAll(AppColors.primary),
  rangeSelectionBackgroundColor: AppColors.softPrimary,
  //rangeSelectionForegroundColor: Colors.black,
);
final darkDatePickerTheme = DatePickerThemeData(
  backgroundColor: const Color(0xFF1E1E1E),
  dividerColor: AppColors.primary,
  headerBackgroundColor: AppColors.primary,
  headerForegroundColor: Colors.white,
  weekdayStyle: AppThemeTextStyles.lightTextTheme.bodyMedium!.copyWith(
    color: AppColors.primary,
  ),
  dayForegroundColor: const WidgetStatePropertyAll(Colors.white),
  dayBackgroundColor: const WidgetStatePropertyAll(Color(0xFF2A2A2A)),
  todayForegroundColor: const WidgetStatePropertyAll(Colors.black),
  todayBackgroundColor: const WidgetStatePropertyAll(AppColors.primary),
  rangeSelectionBackgroundColor: AppColors.softPrimary,
  //rangeSelectionForegroundColor: Colors.white,
);
