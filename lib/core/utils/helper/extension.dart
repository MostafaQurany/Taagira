import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

hSpace(double h) => SizedBox(height: h.h);
wSpace(double w) => SizedBox(width: w.w);

extension MySnakeBar on BuildContext {
  SnackBar showSnackBar(String message) {
    return SnackBar(content: Text(message));
  }
}

extension TextThemeStyles on BuildContext {
  void textTheme() => Theme.of(this).textTheme;
}
