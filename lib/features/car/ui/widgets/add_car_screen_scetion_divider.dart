import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';

class AddCarScreenScetionDivider extends StatelessWidget {
  const AddCarScreenScetionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Divider(
        thickness: 1,
        color: AppColors.lighterGray.withOpacity(0.5),
      ),
    );
  }
}
