import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

hSize(double h) => SizedBox(height: h.h);
wSize(double w) => SizedBox(width: w.w);

extension MySnakeBar on BuildContext {
  SnackBar showSnackBar(String message) {
    return SnackBar(content: Text(message));
  }
}

extension TextThemeStyles on BuildContext {
  void textTheme() => Theme.of(this).textTheme;
}
