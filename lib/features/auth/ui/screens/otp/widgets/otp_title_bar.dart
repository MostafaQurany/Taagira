import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';
import 'package:taggira/generated/l10n.dart';

class OtpTitleBar extends StatelessWidget {
  const OtpTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          S.of(context).phoneVerification,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 8.h),
        Text(
          S.of(context).otp,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontFamily: MyTextStyles.seymourOne,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
