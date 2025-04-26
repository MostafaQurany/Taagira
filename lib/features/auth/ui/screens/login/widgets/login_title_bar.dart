import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';

class LoginTitleBar extends StatelessWidget {
  const LoginTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Login To", style: Theme.of(context).textTheme.displayLarge),
        Text(
          "Taagira",
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontFamily: MyTextStyles.seymourOne,
            color: AppColors.primary,
          ),
        ),
        Text(
          "With Phone Number",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ],
    );
  }
}
