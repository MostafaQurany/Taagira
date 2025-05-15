import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        leading: Icon(icon, color: AppColors.gray),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
