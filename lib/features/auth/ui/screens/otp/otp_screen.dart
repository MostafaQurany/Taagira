import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/core/widgets/loading_dialog.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/auth/ui/screens/otp/widgets/otp_title_bar.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';
import 'package:taggira/features/user/model/user_model.dart';
import 'package:taggira/generated/l10n.dart';

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

  int _resendTimerSeconds = 30;
  bool _canResendOtp = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startResendTimer();
  }

  void _startResendTimer() {
    _canResendOtp = false;
    _resendTimerSeconds = 30; // Reset timer duration
    _timer?.cancel(); // Cancel any existing timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        if (_resendTimerSeconds > 0) {
          setState(() {
            _resendTimerSeconds--;
          });
        } else {
          _timer?.cancel();
          setState(() {
            _canResendOtp = true;
          });
        }
      } else {
        _timer?.cancel();
      }
    });
  }

  void _resendOtp() {
    if (_canResendOtp) {
      // Assuming AuthCubit().getOtp() uses the previously entered phone number
      context.read<AuthCubit>().getOtp();
      // Timer will be restarted on successful OTP resend via BlocListener
    }
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const OtpTitleBar(),
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Text(
                        S.of(context).enterThe6digitCodeSentToYourPhoneNumber,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(color: AppColors.gray),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Center(
                        child: SizedBox(
                          height: 450.h,
                          child: SvgPicture.asset(
                            Theme.of(context).brightness == Brightness.light
                                ? AppSVG.otpLoginLight
                                : AppSVG.otpLoginDark,
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
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 26.h),
                child: Column(
                  children: [
                    PinCodeTextField(
                      appContext: context,
                      length: 6,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      autoFocus: false,
                      cursorColor: AppColors.primary,
                      backgroundColor: AppColors.transparent,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(12.r),
                        fieldHeight: 50.h,
                        fieldWidth: 45.w, // Adjusted width for better fit
                        activeFillColor: Theme.of(context).cardColor,
                        inactiveColor: AppColors.lighterGray,
                        activeColor: AppColors.primary,
                        selectedColor: AppColors.primary,
                        selectedFillColor: Theme.of(
                          context,
                        ).cardColor.withOpacity(0.8),
                        inactiveFillColor:
                            Theme.of(
                              context,
                            ).scaffoldBackgroundColor, // Use scaffold background for inactive empty
                        // textStyle: Theme.of(context).textTheme.titleLarge,
                      ),
                      enableActiveFill: true,
                      animationDuration: const Duration(milliseconds: 300),
                      controller: textEditingController,
                      onCompleted: (v) {
                        _enabled = true;
                        otp = v;
                        // Automatically trigger verification on completion
                        context.read<AuthCubit>().verifyOtp(otp);
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
                        // Allow pasting
                        return true;
                      },
                    ),
                    hSize(20),
                    BlocConsumer<AuthCubit, AuthState>(
                      listenWhen: (previous, current) {
                        return current is LoadingVerifyOtp ||
                            current
                                is ErrorVerifyOtp || // Assuming specific error state for verify
                            current is SuccessVerifyOtp ||
                            current is UserExitState ||
                            current is SuccessCreateUserGoToProfile ||
                            current is SuccessGetUserGoToHome;
                      },
                      listener: (context, state) {
                        switch (state) {
                          case LoadingVerifyOtp():
                            setState(() {
                              _isLoading = true;
                            });
                            AppDialog.showLoading(context);
                            break;

                          case ErrorVerifyOtp(:final message):
                            setState(() {
                              _isLoading = false;
                            });
                            AppDialog.hide(context);
                            AppDialog.showError(context, message);
                            break;

                          case SuccessVerifyOtp(:final userModel):
                            context.read<AuthCubit>().checkUser(userModel);
                            break;

                          case UserExitState(:final isUserExsit, :final user):
                            if (isUserExsit) {
                              context.read<AuthCubit>().getUser(user);
                            } else {
                              context.read<AuthCubit>().createNewUser(user);
                            }
                            break;

                          case SuccessCreateUserGoToProfile(:final userModel):
                            _isLoading = false;
                            context.goNamed(Routes.carHomeScreen);
                            break;

                          case SuccessGetUserGoToHome(:final userModel):
                            _isLoading = false;
                            context.goNamed(Routes.carHomeScreen);
                            break;

                          default:
                            // no-op — equivalent to whenOrNull fallback
                            break;
                        }
                      },
                      buildWhen: (previous, current) {
                        return current is LoadingVerifyOtp ||
                            current
                                is ErrorVerifyOtp || // Assuming specific error state for verify
                            current is SuccessVerifyOtp ||
                            current is UserExitState ||
                            current is SuccessCreateUserGoToProfile ||
                            current is SuccessGetUserGoToHome;
                      },
                      builder: (context, state) {
                        return SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed:
                                _enabled && !_isLoading
                                    ? () {
                                      context.read<AuthCubit>().verifyOtp(otp);
                                    }
                                    : null,

                            child: const Text("Verify"),
                          ),
                        );
                      },
                    ),
                    hSize(20),
                    BlocListener<AuthCubit, AuthState>(
                      listenWhen:
                          (previous, current) =>
                              current is LoadingGetOtp ||
                              current is SuccessGetOtp ||
                              current is ErrorGetOtp,
                      listener: (context, state) {
                        switch (state) {
                          case LoadingGetOtp():
                            // Optionally show a small loading indicator or disable resend text
                            break;

                          case SuccessGetOtp():
                            _startResendTimer(); // Restart timer
                            break;

                          case ErrorGetOtp(:final message):
                            setState(() {
                              _canResendOtp = true;
                            });
                            break;

                          default:
                            // Do nothing (same as whenOrNull fallback)
                            break;
                        }
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text:
                                  _canResendOtp
                                      ? S.of(context).didntReceiveTheCode
                                      : S.of(context).resendOtpIn,
                            ),
                            _canResendOtp
                                ? TextSpan(
                                  text: S.of(context).resendAgain,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = _resendOtp,
                                )
                                : TextSpan(
                                  text: "${_resendTimerSeconds}s",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                  ),
                                ),
                          ],
                        ),
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
