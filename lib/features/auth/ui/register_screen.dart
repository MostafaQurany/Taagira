import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/generated/l10n.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(AppImges.registerScreenBackground, fit: BoxFit.fill),
            Padding(
              padding: AppConstance.screenPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  hSize(AppConstance.screenSpacingTop),
                  Text(
                    S.of(context).withTaagiranRentingIsEasy,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: AppColors.white),
                  ),
                  hSize(20),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Elit cras mattis nibh habitasse consequat enim posuere",
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: AppColors.white),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.white,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: AppColors.primary,
                            width: 0.5,
                          ),
                        ),
                      ),
                      onPressed: () => context.pushNamed(Routes.loginScreen),
                      child: Text(S.of(context).letsGetStarted),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
