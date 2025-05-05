import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/car/cubit/add_car_cubit/add_car_cubit.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_radio_grops.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_section_header.dart';

class AddCarScreenFeaturesAndDiscreption extends StatefulWidget {
  const AddCarScreenFeaturesAndDiscreption({super.key});

  @override
  State<AddCarScreenFeaturesAndDiscreption> createState() =>
      _AddCarScreenFeaturesAndDiscreptionState();
}

class _AddCarScreenFeaturesAndDiscreptionState
    extends State<AddCarScreenFeaturesAndDiscreption> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        AddCarRadioGrops(
          hasGPS: context.read<AddCarCubit>().hasGPS,
          hasBluetooth: context.read<AddCarCubit>().hasBluetooth,
          hasAC: context.read<AddCarCubit>().hasAC,
          hasDriver: context.read<AddCarCubit>().hasDriver,
          onGpsChanged:
              (value) => setState(() {
                context.read<AddCarCubit>().hasGPS = value;
                _validateFeatures(); // Re-validate on change
              }),
          onBluetoothChanged:
              (value) => setState(() {
                context.read<AddCarCubit>().hasBluetooth = value;
                _validateFeatures();
              }),
          onAcChanged:
              (value) => setState(() {
                context.read<AddCarCubit>().hasAC = value;
                _validateFeatures();
              }),
          onDriverChanged:
              (value) => setState(() {
                context.read<AddCarCubit>().hasDriver = value;
                _validateFeatures();
              }),
        ),
        // Show validation error message controlled by _showFeatureValidationError
        if (context.read<AddCarCubit>().showFeatureValidationError &&
            (context.read<AddCarCubit>().hasGPS == null ||
                context.read<AddCarCubit>().hasBluetooth == null ||
                context.read<AddCarCubit>().hasAC == null ||
                context.read<AddCarCubit>().hasDriver == null))
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Text(
              'Please select Yes/No for all features.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 12.sp,
              ),
            ),
          ),
        // Section 6: Description
        const AddCarScreenSectionHeader(title: 'Description'),
        CustomTextField(
          controller: context.read<AddCarCubit>().descriptionController,
          label: 'Description',
          hint: 'Add details about the car condition, special features, etc...',
          maxLines: 4,
          validator:
              (v) => v == null || v.isEmpty ? 'Description is required' : null,
        ),
      ],
    );
  }

  bool _validateFeatures() {
    final bool isValid =
        context.read<AddCarCubit>().hasGPS != null &&
        context.read<AddCarCubit>().hasBluetooth != null &&
        context.read<AddCarCubit>().hasAC != null &&
        context.read<AddCarCubit>().hasDriver != null;
    if (!isValid) {
      // Only set the flag to true if we intend to show the error immediately
      // We'll set it true during the main _submitForm validation
    } else {
      // If features become valid, hide the error message
      setState(() {
        context.read<AddCarCubit>().showFeatureValidationError = false;
      });
    }
    return isValid;
  }
}
