import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/car/cubit/add_car_cubit/add_car_cubit.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_drop_down_menu.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_section_header.dart';
// Ensure correct import

class AddCarScreenSpecifications extends StatefulWidget {
  const AddCarScreenSpecifications({super.key});

  @override
  State<AddCarScreenSpecifications> createState() =>
      _AddCarScreenSpecificationsState();
}

class _AddCarScreenSpecificationsState
    extends State<AddCarScreenSpecifications> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AddCarScreenSectionHeader(title: 'Specifications'),
        AddCarDropDownMenu<CarType>(
          label: 'Car Type',
          value: context.read<AddCarCubit>().selectedCarType,
          items:
              CarType.values
                  .where((t) => t != CarType.other)
                  .toList(), // Exclude 'other' if not needed for selection
          onChanged:
              (value) => setState(
                () => context.read<AddCarCubit>().selectedCarType = value,
              ),
          validator: (v) => v == null ? 'Car Type is required' : null,
        ),
        hSize(16.h),
        AddCarDropDownMenu<CarTransmission>(
          label: 'Transmission',
          value: context.read<AddCarCubit>().selectedTransmission,
          items:
              CarTransmission.values
                  .where((t) => t != CarTransmission.other)
                  .toList(),
          onChanged:
              (value) => setState(
                () => context.read<AddCarCubit>().selectedTransmission = value,
              ),
          validator: (v) => v == null ? 'Transmission is required' : null,
        ),
        hSize(16.h),
        AddCarDropDownMenu<CarFuelType>(
          label: 'Fuel Type',
          value: context.read<AddCarCubit>().selectedFuelType,
          items:
              CarFuelType.values.where((f) => f != CarFuelType.other).toList(),
          onChanged:
              (value) => setState(
                () => context.read<AddCarCubit>().selectedFuelType = value,
              ),
          validator: (v) => v == null ? 'Fuel Type is required' : null,
        ),
        hSize(16.h),
        CustomTextField(
          controller: context.read<AddCarCubit>().seatsController,
          label: 'Number of Seats',
          hint: 'e.g., 5',
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(2),
          ],
          validator: (v) {
            if (v == null || v.isEmpty) return 'Seats are required';
            final seats = int.tryParse(v);
            if (seats == null || seats <= 0) return 'Invalid number';
            return null;
          },
        ),
      ],
    );
  }
}
