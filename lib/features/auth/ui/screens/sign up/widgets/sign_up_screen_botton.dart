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
        state.whenOrNull(
          loadingGetOtp: () {
            _loading = true;
          },
          successGetOtp: () {
            print("success");
            _loading = false;

            // context.read<UserCubit>().updateUser(
            //       User(
            //         id: "id",
            //         name: context.read<AuthCubit>().nameController.text,
            //         phoneNumber: context.read<AuthCubit>().phnController.text,
            //         gender: 'gender',
            //         nationalId: 'nationalId',
            //         nationalIdImage: 'nationalIdImage',
            //         validNationalId: false,
            //         birthDate: 'birthDate',
            //       ),
            //     );
            context.pushNamed(Routes.otpScreen);
          },
          errorGetOtp: (message) {
            _loading = false;
          },
        );
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
