import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_formater.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/requests/models/request_model.dart';

class RequestCarCard extends StatelessWidget {
  final CarModel car;
  final RequestModel request;
  const RequestCarCard({super.key, required this.car, required this.request});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      decoration: BoxDecoration(
        color:
            Theme.of(context).brightness == Brightness.light
                ? AppColors.white
                : AppColors.darkGray,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color:
              Theme.of(context).brightness == Brightness.light
                  ? Colors.grey.withOpacity(0.5)
                  : Colors.white.withOpacity(0.2),
        ),
        boxShadow: [
          BoxShadow(
            color:
                Theme.of(context).brightness == Brightness.light
                    ? Colors.grey.withOpacity(0.8)
                    : Colors.white.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(5, 5),
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 30.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // car image
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: SizedBox(
              width: 90.h,
              height: 90.h,
              child: Image.network(
                car.images.isEmpty
                    ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXowz1FO0-jzxik-RtD5SLyIb_w713QdyCGw&s"
                    : car.images.first,
                fit: BoxFit.cover,
              ),
            ),
          ),
          wSize(20.w),
          // Car Title and data
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "${car.brand} ${car.year}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                ),
                hSize(5),
                Text(
                  "${car.model} • ${car.type.name}",
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: AppColors.gray),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                hSize(20),
                RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  text: TextSpan(
                    text: "${car.pricePerDay} ",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: "EGP/day",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(color: AppColors.gray),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppFormatter.getStatusColor(
                request.requestState.name,
              ).withAlpha(50),
              borderRadius: BorderRadius.horizontal(
                left: const Radius.elliptical(60, 19),
                right: Radius.circular(15.r),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: AppFormatter.getStatusMessage(request.requestState.name),
          ),
        ],
      ),
    );
  }
}
