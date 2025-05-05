import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:taggira/core/theme/app_colors.dart';

class CustomPhoneField extends StatelessWidget {
  final TextEditingController controller;
  const CustomPhoneField({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 75.h,
      child: IntlPhoneField(
        controller: controller,
        decoration: _lightDecoration(hintText: 'Phone Number'),
        initialCountryCode: 'EG',
        pickerDialogStyle: PickerDialogStyle(
          backgroundColor: AppColors.white,
          countryNameStyle: Theme.of(context).textTheme.bodySmall,
          countryCodeStyle: Theme.of(context).textTheme.bodySmall,
          searchFieldCursorColor: AppColors.primary,
          searchFieldInputDecoration: _lightDecoration(
            hintText: "Search Country",
          ),
        ),
        onChanged: (phone) {},
      ),
    );
  }

  _lightDecoration({required String hintText}) => InputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: AppColors.darkerWhite,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.lighterGray),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.primary),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: AppColors.lighterGray),
    ),
    hintStyle: TextStyle(
      color: AppColors.lightGray,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),
    prefixIconColor: AppColors.lighterGray,
  );
}
