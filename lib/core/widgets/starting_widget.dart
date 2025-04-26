import 'package:flutter/material.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';

class StartingWidget extends StatelessWidget {
  const StartingWidget({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(padding: AppConstance.screenPadding, child: child),
      ),
    );
  }
}
