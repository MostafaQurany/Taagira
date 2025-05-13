import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/ui/widgets/favoriteCar/favorite_car_icon.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';

class CarCard extends StatefulWidget {
  CarModel carModel;
  bool isShow;
  CarCard({super.key, required this.carModel, this.isShow = false});

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Hero(
            tag: 'car-image-${widget.carModel.id}',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                AppImges.carImagePlaceholder,
                height: 80.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          hSize(8),
          Row(
            children: [
              Expanded(
                child: Text(
                  "${widget.carModel.brand} ${widget.carModel.year}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              wSize(20),

              FavoriteCarIcon(
                carId: widget.carModel.id,
                isFavorite: widget.carModel.isFavorite,
              ),
            ],
          ),
          Text(
            "${widget.carModel.model} • ${widget.carModel.type.name}",
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: AppColors.gray),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.h),
          RichText(
            text: TextSpan(
              text: "${widget.carModel.pricePerDay} ",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.orange,
              ),
              children: [
                TextSpan(
                  text: "EGP/day",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: AppColors.gray),
                ),
              ],
            ),
          ),
          const Spacer(),

          // Divider with padding
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: const Divider(height: 1),
          ),

          // Rent Now Button with animation
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: double.infinity,
            height: 36.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.primary.withOpacity(0.6),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(8.r),
                onTap: () {
                  context.pushNamed(
                    Routes.carCardDetailsScreen,
                    extra: widget.carModel,
                  );
                },
                child: Center(
                  child: Text(
                    "Rent Now",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
