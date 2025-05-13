import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';

class SignUpScreenBotton extends StatefulWidget {
  const SignUpScreenBotton({super.key});

  @override
  _SignUpScreenBottonState createState() => _SignUpScreenBottonState();
}

class _SignUpScreenBottonState extends State<SignUpScreenBotton> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listenWhen: (previous, current) {
        return current is LoadingGetOtp ||
            current is SuccessGetOtp ||
            current is ErrorGetOtp;
      },
      listener: (context, state) {
        switch (state) {
          case LoadingGetOtp():
            _loading = true;
            break;

          case SuccessGetOtp():
            print("success");
            _loading = false;

            // Optional: update user here
            // context.read<UserCubit>().updateUser(...);

            context.pushNamed(Routes.otpScreen);
            break;

          case ErrorGetOtp(:final message):
            _loading = false;
            break;

          default:
            // Do nothing (equivalent to `whenOrNull`)
            break;
        }
      },
      buildWhen: (previous, current) {
        return current is LoadingGetOtp ||
            current is SuccessGetOtp ||
            current is ErrorGetOtp;
      },
      builder: (context, state) {
        return CustomButton(
          text: "Sign Up",
          onPressed: () {
            context.read<AuthCubit>().getOtp();
          },
          isLoading: _loading,
        );
      },
    );
  }
}
