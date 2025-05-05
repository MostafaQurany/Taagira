import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/car/ui/widgets/carHome/car_card.dart';

class CarCardBuilder extends StatelessWidget {
  const CarCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarCubit, CarState>(
      buildWhen:
          (previous, current) =>
              current is GetAllCarsLoading ||
              current is GetAllCarsSuccess ||
              current is GetAllCarsError,
      builder: (context, state) {
        return state.maybeWhen(
          getAllCarsLoading: () {
            return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          },
          getAllCarsSuccess: (cars) {
            final carsToShow = cars;
            if (carsToShow.isEmpty) {
              return const SliverToBoxAdapter(
                child: Center(child: Text('No cars found.')),
              );
            }
            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 20.h,
                  childAspectRatio: 0.8,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: carsToShow.length,
                  (context, index) {
                    final car = carsToShow[index];
                    return GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          Routes.carCardDetailsScreen,
                          extra: car,
                        );
                      },
                      child: CarCard(carModel: car),
                    );
                  },
                ),
              ),
            );
          },
          getAllCarsError: (e) {
            return SliverToBoxAdapter(child: Text(e));
          },
          orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
        );
      },
    );
  }
}
