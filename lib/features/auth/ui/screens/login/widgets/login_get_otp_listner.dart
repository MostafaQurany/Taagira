import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/loading_dialog.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';

class LoginGetOtpListener extends StatelessWidget {
  final Widget child;
  const LoginGetOtpListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen:
          (previous, current) =>
              current is LoadingGetOtp ||
              current is SuccessGetOtp ||
              current is ErrorGetOtp,
      listener: (context, state) {
        switch (state) {
          case LoadingGetOtp():
            AppDialog.showLoading(context);
            break;

          case SuccessGetOtp():
            AppDialog.hide(context);
            context.pushNamed(Routes.otpScreen);
            break;

          case ErrorGetOtp(:final message):
            AppDialog.hide(context);
            AppDialog.showError(context, message);
            break;

          default:
            // Do nothing (equivalent to whenOrNull)
            break;
        }
      },
      child: child,
    );
  }
}
