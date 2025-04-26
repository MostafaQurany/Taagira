import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_radio_grops.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_section_header.dart';

class AddCarScreenFeaturesAndDiscreption extends StatefulWidget {
  const AddCarScreenFeaturesAndDiscreption({super.key});

  @override
  State<AddCarScreenFeaturesAndDiscreption> createState() =>
      _AddCarScreenFeaturesAndDiscreptionState();
}

class _AddCarScreenFeaturesAndDiscreptionState
    extends State<AddCarScreenFeaturesAndDiscreption> {
  final _descriptionController = TextEditingController();

  bool? _hasGPS; // State now lives here
  bool? _hasBluetooth; // State now lives here
  bool? _hasAC; // State now lives here
  bool _showFeatureValidationError =
      false; // To trigger validation message display

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        AddCarRadioGrops(
          hasGPS: _hasGPS,
          hasBluetooth: _hasBluetooth,
          hasAC: _hasAC,
          onGpsChanged:
              (value) => setState(() {
                _hasGPS = value;
                _validateFeatures(); // Re-validate on change
              }),
          onBluetoothChanged:
              (value) => setState(() {
                _hasBluetooth = value;
                _validateFeatures();
              }),
          onAcChanged:
              (value) => setState(() {
                _hasAC = value;
                _validateFeatures();
              }),
        ),
        // Show validation error message controlled by _showFeatureValidationError
        if (_showFeatureValidationError &&
            (_hasGPS == null || _hasBluetooth == null || _hasAC == null))
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
        AddCarScreenSectionHeader(title: 'Description'),
        CustomTextField(
          controller: _descriptionController,
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
        _hasGPS != null && _hasBluetooth != null && _hasAC != null;
    if (!isValid) {
      // Only set the flag to true if we intend to show the error immediately
      // We'll set it true during the main _submitForm validation
    } else {
      // If features become valid, hide the error message
      setState(() {
        _showFeatureValidationError = false;
      });
    }
    return isValid;
  }
}
