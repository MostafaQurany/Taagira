// lib/features/add_car/ui/add_car_screen.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Required for TextInputFormatters
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/car/cubit/add_car_cubit.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/widgets/add_car_radio_grops.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_basic_information.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_car_images.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_features_and_discreption.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_rental_details.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_scetion_divider.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_section_header.dart';
import 'package:taggira/features/car/ui/widgets/add_car_screen_specifications.dart'; // Ensure correct import

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({super.key});

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  bool isLoading = false;

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
            key: context.read<AddCarCubit>().formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section 1: Images
                AddCarScreenCarImages(),

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
                BlocConsumer<AddCarCubit, AddCarState>(
                  listener: (context, state) {
                    state.when(
                      initial: () {
                        // Do nothing or hide messages
                      },
                      addCarloading: () {
                        // Show a loading indicator (e.g., a dialog or overlay)
                        // You might want to manage a loading flag in the state itself
                        // or use a separate loading state like this.
                        // Example: showDialog(context: context, builder: (_) => LoadingDialog());
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Loading")),
                        ); // Placeholder
                      },
                      addCarSuccess: (message) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(message)));
                        print("Success: $message"); // Placeholder
                      },
                      addCarError: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            backgroundColor: Colors.red,
                          ),
                        );
                        print("Error: $message"); // Placeholder
                      },
                    );
                  },
                  builder: (context, state) {
                    return Center(
                      child: CustomButton(
                        onPressed:
                            isLoading
                                ? null
                                : () {
                                  if (context
                                      .read<AddCarCubit>()
                                      .formKey
                                      .currentState!
                                      .validate()) {
                                    context.read<AddCarCubit>().submitAddCar();
                                  }
                                },
                        text: "Add Car",
                      ),
                    );
                  },
                ),
                hSpace(20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
