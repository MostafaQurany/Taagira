import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/widgets/loading_dialog.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen:
          (previous, current) =>
              current is ErrorLogOut ||
              current is SuccessLogOut ||
              current is LoadingLogOut,
      listener: (context, state) {
        if (state case ErrorLogOut(:final message)) {
          AppDialog.hide(context);
          AppDialog.showError(context, message);
        } else if (state case SuccessLogOut()) {
          AppDialog.hide(context);
          context.goNamed(Routes.loginScreen);
        } else if (state case LoadingLogOut()) {
          AppDialog.showLoading(context);
        }
      },
      child: GestureDetector(
        onTap: () {
          context.read<AuthCubit>().logOutUser();
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.lighterRed.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.logout, color: AppColors.red),
              const SizedBox(width: 8),
              Text(
                "Log Out",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: AppColors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
