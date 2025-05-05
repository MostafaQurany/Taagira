import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';

class SignUpScreenTerms extends StatefulWidget {
  const SignUpScreenTerms({super.key});

  @override
  _SignUpScreenTermsState createState() => _SignUpScreenTermsState();
}

class _SignUpScreenTermsState extends State<SignUpScreenTerms> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            /*termsCheck
                ? Icons.check_box
                : */
            Icons.check_box_outline_blank_outlined,
            color: /*!termsCheck ? AppColors.lightGray :*/ AppColors.primary,
          ),
        ),
        SizedBox(
          width: 300.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "I Agree To The ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Terms Of Services ",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.copyWith(color: AppColors.primary),
                    ),
                    TextSpan(
                      text: "And ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: "Privacy Policy.",
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.copyWith(color: AppColors.primary),
                    ),
                  ],
                ),
              ),
              // if (termsValid) ...[
              //   hSize(h: 10),
              //   Text(
              //     "Please check the privacy policy ",
              //     textAlign: TextAlign.start,
              //     style: Theme.of(
              //       context,
              //     ).textTheme.bodySmall!.copyWith(color: AppColors.red),
              //   ),
              // ],
            ],
          ),
        ),
      ],
    );
  }
}
