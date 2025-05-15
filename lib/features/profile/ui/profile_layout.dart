import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/di/di.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/features/profile/cubit/cubit/app_theme_cubit.dart';
import 'package:taggira/features/profile/ui/widgets/log_out_button.dart';
import 'package:taggira/features/profile/ui/widgets/profile_menu_item.dart';
import 'package:taggira/features/profile/ui/widgets/profile_user_header.dart';

class ProfileLayout extends StatefulWidget {
  const ProfileLayout({super.key});

  @override
  State<ProfileLayout> createState() => _ProfileLayoutState();
}

class _ProfileLayoutState extends State<ProfileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              const ProfileUserHeader(),
              hSize(24),
              Expanded(
                child: Column(
                  children: [
                    const ProfileMenuItem(
                      icon: Icons.person_outline,
                      title: 'Personal Information',
                      onTap: null,
                    ),
                    hSize(24),
                    Container(
                      decoration: BoxDecoration(
                        color:
                            Theme.of(context).brightness == Brightness.light
                                ? AppColors.white
                                : AppColors.darkGray,
                        borderRadius: BorderRadius.circular(16.r),
                        border: Border.all(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey.withOpacity(0.5)
                                  : Colors.white.withOpacity(0.2),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.grey.withOpacity(0.8)
                                    : Colors.white.withOpacity(0.4),
                            blurRadius: 5,
                            offset: const Offset(1, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: const Icon(
                          Icons.nightlight_round_outlined,
                          color: AppColors.gray,
                        ),
                        title: const Text("Dark Mode"),
                        trailing: BlocBuilder<AppThemeCubit, ThemeMode>(
                          builder: (context, themeMode) {
                            return Switch(
                              value: themeMode == ThemeMode.dark,
                              activeColor: AppColors.white,
                              activeTrackColor: AppColors.primary,
                              inactiveThumbColor: AppColors.white,
                              inactiveTrackColor: AppColors.gray,
                              onChanged: (bool value) {
                                context.read<AppThemeCubit>().toggleTheme();
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    hSize(24),
                    // const ProfileMenuItem(
                    //   icon: Icons.support_agent,
                    //   title: 'Customer Support',
                    //   onTap: null,
                    // ),

                    // const ProfileMenuItem(
                    //   icon: Icons.notifications_none,
                    //   title: 'Notification',
                    //   onTap: null,
                    // ),
                    // hSize(24),

                    // const ProfileMenuItem(
                    //   icon: Icons.settings_outlined,
                    //   title: 'Settings',
                    //   onTap: null,
                    // ),
                    // hSize(24),
                  ],
                ),
              ),
              hSize(24),
              BlocProvider(
                create: (context) => getIt<AuthCubit>(),
                child: const LogOutButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
