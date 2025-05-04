import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/car/cubit/add_car_cubit.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_section_header.dart';

class AddCarScreenRentalDetails extends StatefulWidget {
  const AddCarScreenRentalDetails({super.key});

  @override
  State<AddCarScreenRentalDetails> createState() =>
      _AddCarScreenRentalDetailsState();
}

class _AddCarScreenRentalDetailsState extends State<AddCarScreenRentalDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AddCarScreenSectionHeader(title: 'Rental Details'),
        CustomTextField(
          controller: context.read<AddCarCubit>().priceController,
          label: 'Price Per Day (EGP)', // Added currency hint
          hint: 'e.g., 500',
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          validator: (v) {
            if (v == null || v.isEmpty) return 'Price is required';
            final price = int.tryParse(v);
            if (price == null || price <= 0) return 'Invalid price';
            return null;
          },
        ),
        hSpace(16.h),
        CustomTextField(
          controller: context.read<AddCarCubit>().locationController,
          label: 'Location',
          hint: 'e.g., Cairo, Egypt',
          validator:
              (v) => v == null || v.isEmpty ? 'Location is required' : null,
        ),
      ],
    );
  }
}
