import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_section_header.dart';

class AddCarScreenBasicInformation extends StatefulWidget {
  const AddCarScreenBasicInformation({super.key});

  @override
  State<AddCarScreenBasicInformation> createState() =>
      _AddCarScreenBasicInformationState();
}

class _AddCarScreenBasicInformationState
    extends State<AddCarScreenBasicInformation> {
  final _colorController = TextEditingController();

  final _brandController = TextEditingController();

  final _modelController = TextEditingController();

  final _yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AddCarScreenSectionHeader(title: 'Basic Information'),
        CustomTextField(
          controller: _brandController,
          label: 'Brand',
          hint: 'e.g., Toyota',
          validator: (v) => v == null || v.isEmpty ? 'Brand is required' : null,
        ),
        hSpace(16.h),
        CustomTextField(
          controller: _modelController,
          label: 'Model',
          hint: 'e.g., Camry',
          validator: (v) => v == null || v.isEmpty ? 'Model is required' : null,
        ),
        hSpace(16.h),
        CustomTextField(
          controller: _yearController,
          label: 'Year',
          hint: 'e.g., 2022',
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(4),
          ], // Limit length
          validator: (v) {
            if (v == null || v.isEmpty) return 'Year is required';
            if (int.tryParse(v) == null) return 'Invalid year';
            if (v.length != 4) return 'Enter a 4-digit year';
            // Optional: Add range validation (e.g., > 1980 and <= current year)
            return null;
          },
        ),
        hSpace(16.h),
        CustomTextField(
          controller: _colorController,
          label: 'Color',
          hint: 'e.g., White',
          validator: (v) => v == null || v.isEmpty ? 'Color is required' : null,
        ),
      ],
    );
  }
}
