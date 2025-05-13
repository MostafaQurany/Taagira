import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConstance {
  static double screenSpacingTop = 60;
  static EdgeInsetsGeometry screenPadding = const EdgeInsets.only(
    top: 85,
    right: 20,
    left: 20,
    bottom: 60,
  );
  static EdgeInsetsGeometry screenMargin = EdgeInsets.only(
    top: 30.h,
    right: 20.w,
    left: 20.w,
    bottom: 60.h,
  );
  static EdgeInsetsGeometry customFormFieldPadding = EdgeInsets.symmetric(
    horizontal: 5.w,
    vertical: 5.h,
  );
}

class AppCollections {
  static const String usersCollection = "users";
  static const String carsCollection = "cars";
  static const String favoritesCollection = "favorites";
}
