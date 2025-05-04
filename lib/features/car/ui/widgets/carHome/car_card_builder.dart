import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/car_card_details_screen.dart';
import 'package:taggira/features/car/ui/widgets/carHome/car_card.dart';

class CarCardBuilder extends StatelessWidget {
  const CarCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
          childAspectRatio: 0.9,
          mainAxisExtent: 200.h,
        ),
        delegate: SliverChildBuilderDelegate(childCount: 20, (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.carCardDetailsScreen,
                extra: CarModel(
                  id: "id",
                  ownerId: "ownerId",
                  images: [],
                  brand: "Toyota",
                  model: "Camry",
                  year: 2020,
                  type: CarType.coupe,
                  transmission: CarTransmission.automatic,
                  fuelType: CarFuelType.petrol,
                  seats: 6,
                  color: "Color",
                  pricePerDay: 2000,
                  location: "Egypt",
                  isAvailable: true,
                  createdAt: DateTime.now(),
                ),
              );
            },
            child: CarCard(
              carModel: CarModel(
                id: "id",
                ownerId: "ownerId",
                images: [],
                brand: "Toyota",
                model: "Camry",
                year: 2020,
                type: CarType.coupe,
                transmission: CarTransmission.automatic,
                fuelType: CarFuelType.petrol,
                seats: 6,
                color: "Color",
                pricePerDay: 2000,
                location: "Egypt",
                isAvailable: true,
                createdAt: DateTime.now(),
              ),
            ),
          );
        }),
      ),
    );
  }
}
