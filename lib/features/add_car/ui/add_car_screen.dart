// lib/features/add_car/ui/add_car_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Required for TextInputFormatters
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/add_car/models/car_model.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_radio_grops.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_basic_information.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_features_and_discreption.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_rental_details.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_scetion_divider.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_section_header.dart';
import 'package:taggira/features/add_car/ui/widgets/add_car_screen_specifications.dart'; // Ensure correct import

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({super.key});

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  final _formKey = GlobalKey<FormState>();

  final List<String> _selectedImagesPlaceholder = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Car', // Updated title slightly
          style: Theme.of(
            context,
          ).textTheme.displayMedium?.copyWith(color: AppColors.primary),
        ),
        centerTitle: false,
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.primary,
                size: 20.sp,
              ),
              ImageIcon(
                AssetImage(AppIcons.backArrowCarIcon),
                color: AppColors.primary,
                size: 35.sp,
              ),
            ],
          ),
        ),
        leadingWidth: 70.w,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 10.h,
          ), // Adjusted padding
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section 1: Images
                AddCarScreenSectionHeader(title: 'Car Images'),
                Text(
                  'Upload up to 6 images of the car.', // More descriptive text
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: AppColors.gray),
                ),
                hSpace(12.h),
                _buildImagePickerSection(),
                AddCarScreenScetionDivider(),

                // Section 2: Basic Information
                AddCarScreenBasicInformation(),
                AddCarScreenScetionDivider(),

                // Section 3: Specifications
                AddCarScreenSpecifications(),
                AddCarScreenScetionDivider(),

                // Section 4: Rental Details
                AddCarScreenRentalDetails(),
                AddCarScreenScetionDivider(),

                // Section 5: Features (Using the refactored widget)
                // No header needed here as the widget provides its own "Features" title
                AddCarScreenFeaturesAndDiscreption(),

                hSpace(30.h),
                Center(
                  child: CustomButton(
                    onPressed: () {
                      //Todo: make the submite
                    },
                    text: "Add Car",
                    // Optional: Add width or padding if needed via CustomButton properties or wrapping
                  ),
                ),
                hSpace(20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Image Picker Section (Same as before)
  Widget _buildImagePickerSection() {
    // ... (Keep the existing implementation for _buildImagePickerSection)
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: [
        ..._selectedImagesPlaceholder.asMap().entries.map((entry) {
          int index = entry.key;
          return Stack(/* ... existing Stack code ... */);
        }),
        if (_selectedImagesPlaceholder.length < 6)
          GestureDetector(
            onTap: () {
              print('Add image tapped');
              setState(() {
                _selectedImagesPlaceholder.add(
                  'new_image_${_selectedImagesPlaceholder.length + 1}',
                );
              });
            },
            child: Container(/* ... existing Container code ... */),
          ),
      ],
    );
  }
}
