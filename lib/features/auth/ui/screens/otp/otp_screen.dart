import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/extensions/app_extensions.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController textEditingController = TextEditingController();
  String otp = '';
  bool _enabled = false;
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppConstance.screenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Phone Verification",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      hSize(h: 53),
                      PinCodeTextField(
                        appContext: context,
                        length: 6,
                        animationType: AnimationType.fade,
                        keyboardType: TextInputType.number,
                        cursorColor: AppColors.primary,
                        backgroundColor: AppColors.transparent,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(12),
                          fieldHeight: 50.h,
                          fieldWidth: 50.w,
                          activeFillColor: Colors.white,
                          inactiveColor: AppColors.lighterGray,
                          activeColor: AppColors.primary,
                          selectedColor: AppColors.primary,
                        ),
                        animationDuration: Duration(milliseconds: 300),
                        onCompleted: (v) {
                          _enabled = true;
                          otp = v;
                          setState(() {});
                        },
                        onChanged: (value) {
                          if (value.length < 6) {
                            _enabled = false;
                          } else {
                            _enabled = true;
                          }
                          setState(() {});
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          return true;
                        },
                      ),
                      hSize(h: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't Receive Code? ",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "Resend Again",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BlocConsumer<AuthCubit, AuthState>(
                listenWhen: (previous, current) {
                  return current is LoadingVerifyOtp ||
                      current is ErrorGetOtp ||
                      current is SuccessVerifyOtp ||
                      current is SuccessCreateUser;
                },
                listener: (context, state) {
                  state.whenOrNull(
                    loadingVerifyOtp: () {
                      _isLoading = true;
                    },
                    errorGetOtp: (message) {
                      _isLoading = false;
                      print("error is  $message");
                    },
                    successVerifyOtp: (userId) {
                      _isLoading = false;
                      //   context.read<UserCubit>().user!.id = userId;
                      // context
                      //     .read<OtpCubit>()
                      //     .createNewUser(context.read<UserCubit>().user!);
                    },
                    successCreateUser: () {
                      //context.read<UserCubit>().updateUser(user);
                      context.pushReplacement(Routes.homeLayout);
                    },
                  );
                },
                builder: (context, state) {
                  return CustomButton(
                    text: "Verify",
                    onPressed:
                        _enabled
                            ? () {
                              context.read<AuthCubit>().verifyOtp(otp);
                            }
                            : null,
                    isLoading: _isLoading,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
