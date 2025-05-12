import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/car/ui/widgets/carHome/car_card_builder.dart';

class CarHomeScreen extends StatefulWidget {
  const CarHomeScreen({super.key});

  @override
  State<CarHomeScreen> createState() => _CarHomeScreenState();
}

class _CarHomeScreenState extends State<CarHomeScreen> {
  @override
  void initState() {
    context.read<CarCubit>().fetchingCar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.pushNamed(Routes.addCarScreen);
        },
      ),
      body: SafeArea(
        child: RefreshIndicator(
          backgroundColor: AppColors.darkerWhite,
          color: AppColors.primary,
          onRefresh: () async {
            await context.read<CarCubit>().fetchingCar();
          },
          child: CustomScrollView(
            //  key: const PageStorageKey('car_home_scroll'),
            slivers: [
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                elevation: 0,
                toolbarHeight: 120.h,
                title: Column(
                  children: [
                    hSize(14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16.sp,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  "52841 Bridle Squares",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(width: 8.w),
                        CircleAvatar(
                          radius: 20.r,
                          backgroundImage: AssetImage(
                            AppImges.personImagePlaceholder,
                          ),
                        ),
                      ],
                    ),
                    hSize(14),
                    CustomTextField(
                      controller: TextEditingController(),
                      hint: 'Search by brand, model, or year...',
                      prefixIcon: const Icon(Icons.search),
                      onChange: (query) {
                        context.read<CarCubit>().searchCars(query);
                      },
                    ),
                  ],
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      hSize(16),
                      Text(
                        "All Cars",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      hSize(16),
                    ],
                  ),
                ),
              ),
              const CarCardBuilder(),
              SliverToBoxAdapter(child: SizedBox(height: 80.h)),
            ],
          ),
        ),
      ),
    );
  }
}
