import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/car/models/car_model.dart';

class CarCard extends StatefulWidget {
  CarModel carModel;
  CarCard({super.key, required this.carModel});

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
              SizedBox(width: 4.w),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.carModel = widget.carModel.copyWith(
                      isFavorite: !widget.carModel.isFavorite,
                    );
                  });
                },
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Icon(
                    widget.carModel.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color:
                        widget.carModel.isFavorite
                            ? AppColors.orange
                            : Colors.grey,
                    size: 20.w,
                    key: ValueKey<bool>(widget.carModel.isFavorite),
                  ),
                ),
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
                  // Handle rent now action
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
