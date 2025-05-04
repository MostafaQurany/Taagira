import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/car/cubit/add_car_cubit.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_section_header.dart';

class AddCarScreenBasicInformation extends StatefulWidget {
  const AddCarScreenBasicInformation({super.key});

  @override
  State<AddCarScreenBasicInformation> createState() =>
      _AddCarScreenBasicInformationState();
}

class _AddCarScreenBasicInformationState
    extends State<AddCarScreenBasicInformation> {
  // --- State Variables for Selections ---

  @override
  void initState() {
    super.initState();
    // Generate the list of years dynamically (e.g., 1950 to current year + 1)
    final int currentYear = DateTime.now().year;
    context.read<AddCarCubit>().yearList = List<int>.generate(
      currentYear - 1950 + 2, // +2 to include currentYear + 1
      (int index) => currentYear + 1 - index, // Generate in descending order
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  // --- Helper to build FilterChips ---
  Widget _buildChip({
    required String label,
    required bool isSelected,
    required ValueChanged<bool> onSelected,
  }) {
    return FilterChip(
      label: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color:
              isSelected
                  ? AppColors.white
                  : AppColors.darkGray, // Adjust colors
        ),
      ),
      selected: isSelected,
      onSelected: onSelected,
      backgroundColor:
          isSelected
              ? AppColors.primary.withOpacity(0.1)
              : AppColors.darkerWhite, // Subtle background when selected
      selectedColor: AppColors.primary, // Adjust colors
      checkmarkColor: AppColors.white,
      showCheckmark: true,
      side:
          isSelected
              ? BorderSide(color: AppColors.primary)
              : BorderSide(
                color: AppColors.lightGray,
              ), // Border when not selected
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
    );
  }

  // --- Function to handle the suggestion ---
  void _handleSuggestion(String suggestedBrand, String suggestedModel) {
    // TODO: Implement actual suggestion handling logic here
    // - Send to backend API
    // - Store locally for admin review
    // - Log the suggestion
    print('Suggestion Received:');
    if (suggestedBrand.isNotEmpty) {
      print('  Brand: $suggestedBrand');
    }
    if (suggestedModel.isNotEmpty) {
      print('  Model: $suggestedModel');
    }

    // Show a confirmation message
    if (mounted) {
      // Check if the widget is still in the tree
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Thank you for your suggestion!'),
          backgroundColor: AppColors.green, // Use a success color
        ),
      );
    }
  }

  // --- Function to show the suggestion dialog ---
  Future<void> _showSuggestDialog(BuildContext context) async {
    final brandController = TextEditingController();
    final modelController = TextEditingController();
    // Pre-fill brand if one is already selected
    if (context.read<AddCarCubit>().selectedBrand != null &&
        context.read<AddCarCubit>().selectedBrand!.isNotEmpty) {
      brandController.text = context.read<AddCarCubit>().selectedBrand!;
    }

    await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Suggest Brand/Model'),
          backgroundColor: AppColors.darkerWhite,
          content: SingleChildScrollView(
            // Use SingleChildScrollView for smaller screens
            child: Column(
              mainAxisSize: MainAxisSize.min, // Take minimum space
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "If you can't find the Brand or Model, please suggest it below.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                hSpace(16.h),
                CustomTextField(
                  controller: brandController,
                  label: 'Suggested Brand',
                  hint: 'e.g., Rivian',
                  validator: (text) {
                    return null;
                  },
                ),
                hSpace(12.h),
                CustomTextField(
                  controller: modelController,
                  label: 'Suggested Model',
                  hint: 'e.g., R1T (Optional, if brand exists)',
                  validator: (text) {
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel', style: TextStyle(color: AppColors.gray)),
              onPressed: () {
                brandController.clear();
                modelController.clear();
                Navigator.of(dialogContext).pop(); // Close the dialog
              },
            ),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: AppColors.primary),
              child: const Text('Submit Suggestion'),
              onPressed: () {
                final suggestedBrand = brandController.text.trim();
                final suggestedModel = modelController.text.trim();

                // Basic validation: at least one field must have text
                if (suggestedBrand.isEmpty && suggestedModel.isEmpty) {
                  // Optionally show an error inside the dialog or just ignore
                  return;
                }

                _handleSuggestion(suggestedBrand, suggestedModel);
                brandController.clear();
                modelController.clear();
                Navigator.of(dialogContext).pop(); // Close the dialog
              },
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ), // Rounded corners for dialog
        );
      },
    );

    // Dispose controllers after the dialog is closed
  }

  @override
  Widget build(BuildContext context) {
    // Derive dynamic lists based on selections
    final List<String> currentBrands =
        context.read<AddCarCubit>().selectedCategory != null
            ? context
                    .read<AddCarCubit>()
                    .carData[context.read<AddCarCubit>().selectedCategory!]
                    ?.keys
                    .toList() ??
                []
            : [];
    final List<String> currentModels =
        (context.read<AddCarCubit>().selectedCategory != null &&
                context.read<AddCarCubit>().selectedBrand != null)
            ? context.read<AddCarCubit>().carData[context
                    .read<AddCarCubit>()
                    .selectedCategory!]![context
                    .read<AddCarCubit>()
                    .selectedBrand!] ??
                []
            : [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // Removed spacing and mainAxisAlignment from Row itself
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Align items to ends
          crossAxisAlignment: CrossAxisAlignment.center, // Center vertically
          children: [
            const AddCarScreenSectionHeader(title: 'Basic Information'),
            TextButton(
              onPressed: () {
                // --- Call the dialog function ---
                _showSuggestDialog(context);
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero, // Remove default padding
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // Minimize tap area
                minimumSize: Size.zero, // No minimum size
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 6.h,
                ), // Adjust padding
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary.withOpacity(0.7),
                    width: 1,
                  ), // Use primary color border
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Text(
                  "Can't Find?", // Shorter text
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: const Color.fromARGB(255, 31, 31, 32),
                  ), // Adjust style
                ),
              ),
            ),
          ],
        ),
        hSpace(8.h),

        // --- Category Selection ---
        Text(
          'Select Category:',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        hSpace(8.h),
        Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children:
              context.read<AddCarCubit>().carData.keys.map((category) {
                return _buildChip(
                  label: category,
                  isSelected:
                      context.read<AddCarCubit>().selectedCategory == category,
                  onSelected: (_) {
                    setState(() {
                      if (context.read<AddCarCubit>().selectedCategory ==
                          category) {
                        context.read<AddCarCubit>().selectedCategory = null;
                        context.read<AddCarCubit>().selectedBrand = null;
                        context.read<AddCarCubit>().selectedModel = null;
                        context.read<AddCarCubit>().selectedYear = null;
                        context.read<AddCarCubit>().selectedColor = null;
                      } else {
                        context.read<AddCarCubit>().selectedCategory = category;
                        context.read<AddCarCubit>().selectedBrand = null;
                        context.read<AddCarCubit>().selectedModel = null;
                        context.read<AddCarCubit>().selectedYear = null;
                        context.read<AddCarCubit>().selectedColor =
                            null; // Reset year when category changes
                      }
                    });
                  },
                );
              }).toList(),
        ),
        hSpace(16.h),

        // --- Brand Selection (Conditional) ---
        if (context.read<AddCarCubit>().selectedCategory != null) ...[
          Text(
            'Select Brand:',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          hSpace(8.h),
          if (currentBrands.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                'No brands found for $context.read<AddCarCubit>().selectedCategory.',
                style: TextStyle(color: AppColors.gray),
              ),
            )
          else
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children:
                  currentBrands.map((brand) {
                    return _buildChip(
                      label: brand,
                      isSelected:
                          context.read<AddCarCubit>().selectedBrand == brand,
                      onSelected: (_) {
                        setState(() {
                          if (context.read<AddCarCubit>().selectedBrand ==
                              brand) {
                            context.read<AddCarCubit>().selectedBrand = null;
                            context.read<AddCarCubit>().selectedModel = null;

                            context.read<AddCarCubit>().selectedYear = null;

                            context.read<AddCarCubit>().selectedColor =
                                null; // Reset year if brand deselected
                          } else {
                            context.read<AddCarCubit>().selectedBrand = brand;
                            context.read<AddCarCubit>().selectedModel = null;
                            context.read<AddCarCubit>().selectedYear = null;
                            context.read<AddCarCubit>().selectedColor =
                                null; // Reset year when brand changes
                          }
                        });
                      },
                    );
                  }).toList(),
            ),
          hSpace(16.h),
        ],

        // --- Model Selection (Conditional) ---
        if (context.read<AddCarCubit>().selectedBrand != null) ...[
          Text(
            'Select Model:',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          hSpace(8.h),
          if (currentModels.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                'No models found for $context.read<AddCarCubit>().selectedBrand.',
                style: TextStyle(color: AppColors.gray),
              ),
            )
          else
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              children:
                  currentModels.map((model) {
                    return _buildChip(
                      label: model,
                      isSelected:
                          context.read<AddCarCubit>().selectedModel == model,
                      onSelected: (_) {
                        setState(() {
                          if (context.read<AddCarCubit>().selectedModel ==
                              model) {
                            context.read<AddCarCubit>().selectedModel = null;
                          } else {
                            context.read<AddCarCubit>().selectedModel = model;
                          }
                          // TODO: Update Cubit state here if needed
                          // context.read<AddCarCubit>().updateBasicInfo(
                          //   category: context.read<AddCarCubit>().selectedCategory,
                          //   brand: context.read<AddCarCubit>().selectedBrand,
                          //   model: context.read<AddCarCubit>().selectedModel,
                          //   year: context.read<AddCarCubit>().selectedYear, // Pass year too
                          // );
                        });
                      },
                    );
                  }).toList(),
            ),
          hSpace(16.h),
        ],

        // --- Year and Color Input (Conditional on Brand Selection) ---
        if (context.read<AddCarCubit>().selectedBrand != null) ...[
          // --- Year Dropdown ---
          Row(
            children: [
              Text("Year: ", style: Theme.of(context).textTheme.headlineSmall),
              wSpace(20),
              Expanded(
                child: DropdownButtonFormField<int>(
                  value: context.read<AddCarCubit>().selectedYear,
                  items:
                      context.read<AddCarCubit>().yearList!.map((int year) {
                        return DropdownMenuItem<int>(
                          value: year,
                          child: Text(year.toString()),
                        );
                      }).toList(),
                  onChanged: (int? newValue) {
                    setState(() {
                      context.read<AddCarCubit>().selectedYear = newValue;
                      // TODO: Update Cubit state here if needed
                      // context.read<AddCarCubit>().updateYear(newValue);
                    });
                  },
                  validator:
                      (value) => value == null ? 'Please select a year' : null,
                  decoration: InputDecoration(
                    hintText: 'Select Manufacturing Year',
                    // Use your standard input decoration from CustomTextField if available
                    // Or customize here:
                    border: Theme.of(context).inputDecorationTheme.border,
                    enabledBorder:
                        Theme.of(context).inputDecorationTheme.enabledBorder,
                    focusedBorder:
                        Theme.of(context).inputDecorationTheme.focusedBorder,
                    filled: true,
                    fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                    contentPadding:
                        Theme.of(context).inputDecorationTheme.contentPadding,
                  ),
                  isExpanded: true,
                  dropdownColor:
                      AppColors.white, // Background color of the dropdown menu
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.darkGray,
                  ), // Text style for selected item
                ),
              ),
            ],
          ),
          hSpace(16.h),

          // --- Color Palette Selection ---
          Text(
            'Select Color:',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          hSpace(10.h),
          Wrap(
            spacing: 12.w, // Horizontal space between swatches
            runSpacing: 12.h, // Vertical space between rows
            children: [
              ...context.read<AddCarCubit>().availableColors.map((color) {
                bool isSelected =
                    context.read<AddCarCubit>().selectedColor == color;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      context.read<AddCarCubit>().selectedColor = color;
                      // TODO: Update Cubit state here if needed
                      // context.read<AddCarCubit>().updateColor(color);
                    });
                  },
                  child: Container(
                    width: 45.w, // Size of the color swatch
                    height: 45.h,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle, // Use circle shape
                      border: Border.all(
                        color:
                            isSelected
                                ? AppColors
                                    .primary // Highlight selected color
                                : (color == Colors.white
                                    ? Colors.grey.shade400
                                    : Colors
                                        .transparent), // Add border to white swatch always
                        width:
                            isSelected
                                ? 3.0.sp
                                : 1.0.sp, // Thicker border if selected
                      ),
                      boxShadow: [
                        // Optional: Add subtle shadow for depth
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 3,
                          offset: Offset(1, 2),
                        ),
                      ],
                    ),
                    // Add a checkmark icon inside the selected swatch
                    child:
                        isSelected
                            ? Icon(
                              Icons.check_rounded,
                              color: context
                                  .read<AddCarCubit>()
                                  .getCheckmarkColor(
                                    color,
                                  ), // Determine check color based on background
                              size: 24.sp,
                            )
                            : null, // No icon if not selected
                  ),
                );
              }),
              _buildChip(
                label: "Others",
                isSelected: context.read<AddCarCubit>().selectedOtherColor,
                onSelected: (value) {
                  if (value) {
                    setState(() {
                      context.read<AddCarCubit>().selectedOtherColor = value;
                      context.read<AddCarCubit>().selectedColor = null;
                    });
                  } else {
                    setState(() {
                      context.read<AddCarCubit>().selectedOtherColor = value;
                    });
                  }
                },
              ),
            ],
          ),
        ],
      ],
    );
  }
}
