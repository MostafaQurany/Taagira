import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/extensions/app_extensions.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/widgets/custom_button.dart';
import 'package:taggira/features/car/models/car_model.dart';

class CarCard extends StatelessWidget {
  final CarModel carModel;
  const CarCard({super.key, required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              AppImges.carImagePlaceholder,
              height: 80.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          hSize(h: 8),
          Text(
            "${carModel.brand} ${carModel.model} ${carModel.year}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w700),
          ),
          Text(
            "${carModel.type.name} • ${carModel.fuelType.name}",
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: AppColors.gray),
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: RichText(
                  text: TextSpan(
                    text: "${carModel.pricePerDay} ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "EGP/day",
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall!.copyWith(color: AppColors.gray),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 1.h),
                ),
                child: Text("Rent Now"),
                onPressed: () {
                  //TODO: make the rent now screen
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
