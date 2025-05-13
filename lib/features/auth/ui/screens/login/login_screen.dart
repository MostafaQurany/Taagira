import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lottie/lottie.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_get_otp_listner.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_terms.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_title_bar.dart';
import 'package:taggira/generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  bool termsCheck = false;
  bool termsValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // This ensures the Scaffold resizes for the keyboard
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const LoginTitleBar(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Center(
                        child: SizedBox(
                          height: 450.h,
                          child: SvgPicture.asset(
                            Theme.of(context).brightness == Brightness.light
                                ? AppSVG.mobileLogin
                                : AppSVG.mobileLoginDark,
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.white.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Text(
                        S.of(context).justEnterYourPhoneNumberForEasyLoginIn,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.lightGray,
                        ),
                      ),
                    ),
                    hSize(5),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 8,
                            child: Form(
                              key: loginFormKey,
                              child: IntlPhoneField(
                                autovalidateMode: AutovalidateMode.onUnfocus,
                                controller:
                                    context.read<AuthCubit>().phoneController,
                                style: Theme.of(context).textTheme.bodyMedium,
                                invalidNumberMessage:
                                    S.of(context).pleaseEnterValidNumber,
                                decoration: InputDecoration(
                                  hintText: S.of(context).phoneNumber,
                                  hintStyle:
                                      Theme.of(
                                        context,
                                      ).inputDecorationTheme.hintStyle,
                                  border:
                                      Theme.of(
                                        context,
                                      ).inputDecorationTheme.border,
                                  enabledBorder:
                                      Theme.of(
                                        context,
                                      ).inputDecorationTheme.enabledBorder,
                                  focusedBorder:
                                      Theme.of(
                                        context,
                                      ).inputDecorationTheme.focusedBorder,
                                  counterStyle:
                                      Theme.of(
                                        context,
                                      ).inputDecorationTheme.counterStyle,
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 2.h,
                                  ),
                                ),
                                initialCountryCode: 'EG',
                                onChanged: (phone) {
                                  print("phone Number =  $phone");
                                  context
                                      .read<AuthCubit>()
                                      .phoneController
                                      .text = phone.number;
                                  setState(() {});
                                },
                                onCountryChanged: (value) {
                                  context.read<AuthCubit>().country =
                                      value.dialCode;
                                },
                                validator: (phoneNumber) {
                                  if (phoneNumber == null ||
                                      phoneNumber.number.isEmpty) {
                                    return S.of(context).pleaseEnterValidNumber;
                                  }

                                  final number = phoneNumber.completeNumber;

                                  // Basic global format check: starts with + and digits, min 10 digits
                                  final isValid = RegExp(
                                    r'^\+\d{10,15}$',
                                  ).hasMatch(number);

                                  if (!isValid) {
                                    return S.of(context).pleaseEnterValidNumber;
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          wSize(10),
                          Expanded(
                            flex: 3,
                            child: LoginGetOtpListener(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                                onPressed:
                                    context
                                                .watch<AuthCubit>()
                                                .phoneController
                                                .text
                                                .isNotEmpty &&
                                            loginFormKey.currentState!
                                                .validate()
                                        ? () {
                                          if (loginFormKey.currentState
                                                  ?.validate() ??
                                              false == true) {
                                            context.read<AuthCubit>().getOtp();
                                          }
                                        }
                                        : null,
                                child: SizedBox(
                                  height: 50.h,
                                  child: Center(
                                    child: Text(S.of(context).login),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
