import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/extensions/app_extensions.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_get_otp_listner.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_phone_number_field.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_terms.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_title_bar.dart';
import 'package:taggira/generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool termsValid = true;

  bool termsCheck = false;

  final bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: AppConstance.screenMargin,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginTitleBar(),
                hSize(h: 60),
                Text(
                  "Just enter your phone number for easy login in",
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: AppColors.lightGray),
                ),
                hSize(h: 10),
                const LoginPhoneNumberField(),
                hSize(h: 150),
                LoginGetOtpListener(
                  child: CustomButton(
                    text: S.of(context).login,
                    onPressed: () {
                      context.read<AuthCubit>().getOtp();
                    },
                  ),
                ),
                hSize(h: 10),
                const LoginTerms(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
