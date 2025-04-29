// lib/features/add_car/ui/widgets/add_car_radio_grops.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_section_header.dart';

class AddCarRadioGrops extends StatefulWidget {
  // Changed to StatelessWidget
  final bool? hasGPS;
  final bool? hasBluetooth;
  final bool? hasAC;
  final ValueChanged<bool?> onGpsChanged;
  final ValueChanged<bool?> onBluetoothChanged;
  final ValueChanged<bool?> onAcChanged;

  const AddCarRadioGrops({
    super.key,
    required this.hasGPS,
    required this.hasBluetooth,
    required this.hasAC,
    required this.onGpsChanged,
    required this.onBluetoothChanged,
    required this.onAcChanged,
  });

  @override
  State<AddCarRadioGrops> createState() => _AddCarRadioGropsState();
}

class _AddCarRadioGropsState extends State<AddCarRadioGrops> {
  @override
  Widget build(BuildContext context) {
    final bool showValidationError =
        widget.hasGPS == null ||
        widget.hasBluetooth == null ||
        widget.hasAC == null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AddCarScreenSectionHeader(title: 'Features'),

        hSpace(8),
        _buildRadioGroup(
          label: 'GPS:',
          groupValue: widget.hasGPS, // Use passed value
          onChanged: widget.onGpsChanged, // Use passed callback
        ),
        _buildRadioGroup(
          label: 'Bluetooth:',
          groupValue: widget.hasBluetooth, // Use passed value
          onChanged: widget.onBluetoothChanged, // Use passed callback
        ),
        _buildRadioGroup(
          label: 'Air Conditioning (AC):',
          groupValue: widget.hasAC, // Use passed value
          onChanged: widget.onAcChanged, // Use passed callback
        ),
        // Conditionally display validation message
        if (showValidationError)
          Padding(
            padding: EdgeInsets.only(top: 8.h), // Use .h for screenutil
            child: Text(
              'Please select Yes/No for all features.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 12.sp,
              ),
            ),
          ),
      ],
    );
  }

  // Helper widget for Radio Button groups (remains the same)
  Widget _buildRadioGroup({
    required String label,
    required bool? groupValue,
    required ValueChanged<bool?> onChanged,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Theme.of(context).textTheme.bodyLarge),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<bool?>(
              value: true,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: AppColors.primary,
            ),
            const Text('Yes'),
            SizedBox(width: 10.w),
            Radio<bool?>(
              value: false,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: AppColors.primary,
            ),
            const Text('No'),
          ],
        ),
      ],
    );
  }
}
