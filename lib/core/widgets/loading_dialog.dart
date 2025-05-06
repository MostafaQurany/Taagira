import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/theme/app_colors.dart';

class LoadingDialog {
  static void hide(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    }
  }

  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent closing on outside tap
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(color: AppColors.primary),
                SizedBox(height: 20),
                Text(
                  "Loading...",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
