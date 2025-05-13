import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';
import 'package:taggira/generated/l10n.dart';

class LoginTitleBar extends StatelessWidget {
  const LoginTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(S.of(context).loginTo, style: Theme.of(context).textTheme.titleMedium),
        Text(
          S.of(context).taagira,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontFamily: MyTextStyles.seymourOne,
            color: AppColors.primary,
          ),
        ),
        Text(
          S.of(context).withPhoneNumber,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
