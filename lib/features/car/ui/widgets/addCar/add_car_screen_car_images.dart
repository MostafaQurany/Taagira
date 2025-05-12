import 'dart:io'; // Import dart:io for File

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart'; // Import image_picker
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/car/cubit/add_car_cubit/add_car_cubit.dart';
import 'package:taggira/features/car/ui/widgets/addCar/add_car_screen_section_header.dart';

class AddCarScreenCarImages extends StatefulWidget {
  const AddCarScreenCarImages({super.key});

  @override
  State<AddCarScreenCarImages> createState() => _AddCarScreenCarImagesState();
}

class _AddCarScreenCarImagesState extends State<AddCarScreenCarImages> {
  // --- Function to pick image ---
  Future<void> pickImage(ImageSource source, int index) async {
    try {
      final XFile? pickedFile = await context
          .read<AddCarCubit>()
          .picker
          .pickImage(
            source: source,
            imageQuality: 80, // Optional: Adjust image quality
            maxWidth: 1080, // Optional: Limit image width
          );

      if (pickedFile != null) {
        setState(() {
          context.read<AddCarCubit>().selectedImages[index] = pickedFile;
          // Optionally move carousel to the newly added image's page
          context.read<AddCarCubit>().carouselController.animateToPage(
            index == 5 ? index : index + 1,
          );
        });
      }
    } catch (e) {
      //TODO: error handler here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text left
      children: [
        const AddCarScreenSectionHeader(title: 'Car Images'),
        Text(
          'Upload 6 images of the car from different angles.', // Updated text
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColors.gray),
        ),
        hSize(12.h),
        CarouselSlider.builder(
          carouselController:
              context
                  .read<AddCarCubit>()
                  .carouselController, // Assign controller
          options: CarouselOptions(
            height: 250.h, // Adjust height as needed
            aspectRatio: 16 / 9,
            viewportFraction: 0.8, // Show parts of next/prev items
            initialPage: 0,
            enableInfiniteScroll:
                false, // Don't loop infinitely for fixed slots
            reverse: false,
            autoPlay: false, // No autoplay needed here
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                context.read<AddCarCubit>().currentCarouselIndex =
                    index; // Update current index
              });
            },
          ),
          itemCount: 6, // Always 6 slots
          itemBuilder: (context, index, realIndex) {
            final imageFile = context.read<AddCarCubit>().selectedImages[index];

            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: AppColors.lightGray, // Placeholder background
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(
                  color: AppColors.gray.withOpacity(0.5),
                  width: 1,
                ),
              ),
              child: InkWell(
                onTap: () {
                  // If an image exists, maybe allow viewing/deleting?
                  // For now, only allow adding if empty.
                  if (imageFile == null) {
                    pickImage(ImageSource.camera, index);
                  } else {
                    _showDeleteConfirmationDialog(context, index);
                  }
                },
                borderRadius: BorderRadius.circular(
                  12.r,
                ), // Match container radius
                child:
                    imageFile != null
                        ? ClipRRect(
                          // Clip the image to rounded corners
                          borderRadius: BorderRadius.circular(12.r),
                          child: Image.file(
                            File(imageFile.path), // Convert XFile path to File
                            fit: BoxFit.cover, // Cover the container
                            width: double.infinity,
                            height: double.infinity,
                            errorBuilder:
                                (context, error, stackTrace) => const Center(
                                  child: Icon(
                                    Icons.error_outline,
                                    color: AppColors.lighterRed,
                                  ),
                                ),
                          ),
                        )
                        : Center(
                          // Placeholder content
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_a_photo_outlined,
                                size: 40.sp,
                                color: AppColors.primary,
                              ),
                              hSize(8.h),
                              Text(
                                'Add Image ${index + 1}',
                                style: Theme.of(context).textTheme.bodySmall
                                    ?.copyWith(color: AppColors.darkGray),
                              ),
                            ],
                          ),
                        ),
              ),
            );
          },
        ),
        hSize(10.h),
        // --- Carousel Indicator Dots ---
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(6, (index) {
            return GestureDetector(
              onTap:
                  () => context
                      .read<AddCarCubit>()
                      .carouselController
                      .animateToPage(index),
              child: Container(
                width: 8.w,
                height: 8.h,
                margin: EdgeInsets.symmetric(
                  vertical: 8.0.h,
                  horizontal: 4.0.w,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? AppColors.lightGray
                          : AppColors.primary)
                      .withOpacity(
                        context.read<AddCarCubit>().currentCarouselIndex ==
                                index
                            ? 0.9
                            : 0.4,
                      ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  // --- Helper to show Delete confirmation ---
  void _showDeleteConfirmationDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: const Text('Delete Image?'),
          content: const Text('Are you sure you want to remove this image?'),
          backgroundColor: AppColors.darkerWhite,
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(ctx).pop(); // Close the dialog
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.lighterRed,
              ),
              child: const Text('Delete'),
              onPressed: () {
                setState(() {
                  context.read<AddCarCubit>().selectedImages[index] =
                      null; // Remove the image
                });
                Navigator.of(ctx).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }
}
