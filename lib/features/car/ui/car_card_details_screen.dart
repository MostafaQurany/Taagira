import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/di/di.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/widgets/favoriteCar/favorite_car_icon.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';

class CarCardDetailsScreen extends StatelessWidget {
  CarModel carModel;
  CarCardDetailsScreen({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: Theme.of(
            context,
          ).textTheme.displayMedium?.copyWith(color: AppColors.primary),
        ),
        centerTitle: false,
        leading: GestureDetector(
          onTap: () {
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

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Car owner section
                    ListTile(
                      leading: CircleAvatar(
                        radius: 24.r,
                        backgroundImage: AssetImage(
                          AppImges.personImagePlaceholder,
                        ),
                      ),
                      title: const Text(
                        'Ahmed Ragab',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '0111033083\n7649 Church Close, Port Yolanda',
                      ),
                      // trailing: BlocConsumer<CarCubit, CarState>(
                      //   listenWhen:
                      //       (previous, current) =>
                      //           current is RemoveFavoriteCarsSuccess ||
                      //           current is AddFavoriteCarsSuccess,
                      //   listener: (context, state) {
                      //     if (state is RemoveFavoriteCarsSuccess) {
                      //       carModel = carModel.copyWith(isFavorite: false);
                      //     }
                      //     if (state is AddFavoriteCarsSuccess) {
                      //       carModel = carModel.copyWith(isFavorite: true);
                      //     }
                      //   },
                      //   buildWhen:
                      //       (previous, current) =>
                      //           current is RemoveFavoriteCarsSuccess ||
                      //           current is AddFavoriteCarsSuccess,
                      //   builder: (context, state) {
                      //     if (state is RemoveFavoriteCarsSuccess) {
                      //       carModel = carModel.copyWith(isFavorite: false);
                      //     }
                      //     if (state is AddFavoriteCarsSuccess) {
                      //       carModel = carModel.copyWith(isFavorite: true);
                      //     }
                      //     return BlocProvider.value(
                      //       value: getIt<UserCubit>(),
                      //       child: FavoriteCarIcon(
                      //         carId: carModel.id,
                      //         isFavorite: carModel.isFavorite,
                      //       ),
                      //     );
                      //   },
                      // ),
                    ),
                    SizedBox(height: 16.h),
                    Hero(
                      tag: 'car-image-${carModel.id}',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset(
                          AppImges.carImagePlaceholder,
                          height: 180.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),

                    // Car title + rating + price
                    Text(
                      "${carModel.brand} ${carModel.model} ${carModel.year}",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    // const Row(
                    //   children: [
                    //     Icon(Icons.star, color: Colors.amber),
                    //     Text('4.5 (200 Reviews)', style: TextStyle(color: Colors.grey)),
                    //   ],
                    // ),
                    SizedBox(height: 16.h),
                    // Overview
                    Text(
                      'Description',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),

                    SizedBox(height: 8.h),
                    Text(
                      carModel.description,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(color: AppColors.gray),
                    ),
                    SizedBox(height: 16.h),
                    // Features grid
                    Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Wrap(
                      spacing: 12.w,
                      runSpacing: 12.h,
                      children: [
                        _buildFeatureChip(
                          Icons.airline_seat_recline_normal_sharp,
                          '${carModel.seats} seats',
                        ),
                        if (carModel.hasAC)
                          _buildFeatureChip(Icons.ac_unit, 'AC'),
                        if (carModel.hasBluetooth)
                          _buildFeatureChip(Icons.bluetooth, 'Bluetooth'),
                        if (carModel.hasGPS)
                          _buildFeatureChip(Icons.gps_fixed, 'GPS'),
                        if (carModel.hasDriver)
                          _buildFeatureChip(
                            Icons.drive_eta_rounded,
                            'With Driver',
                          ),
                      ],
                    ),

                    // Images grid
                    Text(
                      'Images',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Wrap(
                      spacing: 12.w,
                      runSpacing: 12.h,
                      children: List.generate(
                        6,
                        (index) => ClipRRect(
                          borderRadius: BorderRadius.circular(8.r),
                          child: Image.asset(
                            AppImges.carImagePlaceholder,
                            height: 100.w,
                            width: 100.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            hSize(10),

            Row(
              children: [
                Text(
                  "${carModel.pricePerDay} EGP/Day",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium!.copyWith(color: AppColors.orange),
                ),
                wSize(30),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.pushNamed(
                        Routes.carPickDataRentScreen,
                        extra: carModel,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    child: const Text('Rent now'),
                  ),
                ),
              ],
            ),
            hSize(10),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureChip(IconData icon, String label) {
    return Chip(avatar: Icon(icon, size: 16), label: Text(label));
  }

  Widget _buildReviewBar(String label, double rating) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        LinearProgressIndicator(value: rating / 5),
        SizedBox(height: 4.h),
      ],
    );
  }

  Widget _buildUserReview(String name, String comment) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(AppImges.personImagePlaceholder),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(comment),
    );
  }
}
