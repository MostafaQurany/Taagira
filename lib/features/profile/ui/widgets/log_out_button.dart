import 'package:flutter/material.dart';
import 'package:taggira/core/theme/app_colors.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Add logout logic
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
    );
  }
}
