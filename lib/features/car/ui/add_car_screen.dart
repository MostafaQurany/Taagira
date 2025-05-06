// lib/features/add_car/ui/add_car_screen.dart
import 'package:flutter/material.dart';
// Required for TextInputFormatters
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/core/widgets/loading_dialog.dart';
import 'package:taggira/features/car/cubit/add_car_cubit/add_car_cubit.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_basic_information.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_car_images.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_features_and_discreption.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_rental_details.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_scetion_divider.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_specifications.dart'; // Ensure correct import

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
          onTap: () {
            context.read<AddCarCubit>().clear();
            context.pop();
          },
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
      body: BlocConsumer<AddCarCubit, AddCarState>(
        listener: (context, state) {
          state.whenOrNull(
            addCarloading: () {
              LoadingDialog.show(context);
            },
            addCarSuccess: (message) {
              context.read<AddCarCubit>().clear();
              context.pop();
              context.pop();
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
              print("Success: $message"); // Placeholder
            },
            addCarError: (message) {
              LoadingDialog.hide(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
              print("Error: $message"); // Placeholder
            },
          );
        },
        builder: (context, state) {
          return SingleChildScrollView(
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
                    const AddCarScreenCarImages(),

                    const AddCarScreenScetionDivider(),

                    // Section 2: Basic Information
                    const AddCarScreenBasicInformation(),
                    const AddCarScreenScetionDivider(),

                    // Section 3: Specifications
                    const AddCarScreenSpecifications(),
                    const AddCarScreenScetionDivider(),

                    // Section 4: Rental Details
                    const AddCarScreenRentalDetails(),
                    const AddCarScreenScetionDivider(),

                    // Section 5: Features (Using the refactored widget)
                    // No header needed here as the widget provides its own "Features" title
                    const AddCarScreenFeaturesAndDiscreption(),

                    hSpace(30.h),
                    Center(
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
                    ),
                    hSpace(20.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
