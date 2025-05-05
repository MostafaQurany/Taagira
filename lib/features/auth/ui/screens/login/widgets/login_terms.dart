import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';

class LoginTerms extends StatefulWidget {
  const LoginTerms({super.key});

  @override
  State<LoginTerms> createState() => _LoginTermsState();
}

class _LoginTermsState extends State<LoginTerms> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              context.read<AuthCubit>().isTermEnabled =
                  !context.read<AuthCubit>().isTermEnabled;
            });
          },
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            switchInCurve: Curves.easeInExpo,
            switchOutCurve: Curves.bounceOut,
            child:
                context.watch<AuthCubit>().isTermEnabled
                    ? const Icon(
                      Icons.check_box,
                      key: ValueKey(true),
                      color: AppColors.primary,
                    )
                    : const Icon(
                      Icons.check_box_outline_blank_outlined,
                      key: ValueKey(false),
                      color: AppColors.gray,
                    ),
          ),
        ),

        Expanded(
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
            ],
          ),
        ),
      ],
    );
  }
}
