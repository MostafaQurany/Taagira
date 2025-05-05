import 'package:flutter/material.dart';
import 'package:taggira/core/utils/extensions/app_extensions.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/features/auth/ui/screens/sign%20up/widgets/sign_up_screen_botton.dart';
import 'package:taggira/features/auth/ui/screens/sign%20up/widgets/sign_up_screen_terms.dart';
import 'package:taggira/features/auth/ui/screens/sign%20up/widgets/sign_up_screen_text_fields.dart';
import 'package:taggira/features/auth/ui/screens/sign%20up/widgets/sign_up_screen_title.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: AppConstance.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SignUpScreenTitle(),
              hSize(h: 56),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // Text Forms
                      const SignUpScreenTextFields(),
                      hSize(h: 60),
                      // Terms
                      const SignUpScreenTerms(),
                      hSize(h: 25),
                    ],
                  ),
                ),
              ),
              // Button
              const SignUpScreenBotton(),
            ],
          ),
        ),
      ),
    );
  }
}
