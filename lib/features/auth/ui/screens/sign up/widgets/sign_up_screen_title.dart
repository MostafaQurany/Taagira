import 'package:flutter/material.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';
import 'package:taggira/core/utils/extensions/app_extensions.dart';
import 'package:taggira/generated/l10n.dart';

class SignUpScreenTitle extends StatefulWidget {
  const SignUpScreenTitle({super.key});

  @override
  SignUpScreenTitleState createState() => SignUpScreenTitleState();
}

class SignUpScreenTitleState extends State<SignUpScreenTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).loginTo,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        hSize(h: 15),
        Text(
          S.of(context).taagira,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
            fontFamily: MyTextStyles.seymourOne,
            color: AppColors.primary,
          ),
        ),
        hSize(h: 15),
        Text(
          S.of(context).withPhoneNumber,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ],
    );
  }
}
