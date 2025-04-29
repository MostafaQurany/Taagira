import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/extensions/app_extensions.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_phone_number_field.dart';
import 'package:taggira/features/auth/ui/screens/login/widgets/login_title_bar.dart';
import 'package:taggira/generated/l10n.dart';

class NewLoginScreen extends StatelessWidget {
  const NewLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Expanded(
            flex: 4, // Adjust flex as needed for image height
            child: Container(
              width: 1.sw,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 24.h,
                ), // Adjust bottom padding for logo
                child: Image.asset(
                  AppImges.tagiraLogo,
                  fit: BoxFit.contain,
                  color: AppColors.white,
                  height: 0.4.sh, // Control logo height
                ),
              ),
            ),
          ),

          Expanded(
            flex: 6, // Adjust flex to control the bottom sheet height
            child: Container(
              width: 1.sw,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LoginTitleBar(),
                      hSize(h: 24),

                      Text(
                        "Just enter your phone number for easy login in",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.lightGray,
                        ),
                      ),
                      hSize(h: 24),
                      LoginPhoneNumberField(),
                      hSize(h: 40),
                      CustomButton(
                        text: S.of(context).login,
                        onPressed: () {
                          //context.read<LoginCubit>().getOtp();
                        },
                      ),
                      hSize(h: 24),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
