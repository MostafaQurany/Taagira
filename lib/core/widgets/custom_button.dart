import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/widgets/loading_circle.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  late bool isLoading;
  CustomButton({
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? LoadingCircle()
        : SizedBox(
          width: double.infinity,
          height: 50.h,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.white,
              disabledBackgroundColor: AppColors.softPrimary,
              disabledForegroundColor: AppColors.white,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: onPressed,
            child: Text(text),
          ),
        );
  }
}
