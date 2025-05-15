import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:taggira/core/routes/routes.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';
import 'package:taggira/generated/l10n.dart';

class CarRentConfirmScreen extends StatelessWidget {
  //TODO: add save the request to pdf
  final CarModel carModel;
  final String returnDate;
  final String pickDate;
  const CarRentConfirmScreen({
    required this.carModel,
    required this.returnDate,
    required this.pickDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserCubit>().user!;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            hSize(24),
            Center(
              child: Text(
                "Congratulations, ${user.phone} 👏",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            hSize(8),
            Center(
              child: Text(
                S.of(context).taagira,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: MyTextStyles.seymourOne,
                  color: AppColors.primary,
                ),
              ),
            ),
            hSize(8),
            Center(
              child: Text(
                "Your booking is in progress.",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            hSize(24),
            Center(
              child: SizedBox(
                height: 250.h,
                child: SvgPicture.asset(
                  Theme.of(context).brightness == Brightness.light
                      ? AppSVG.finshBookingVictorLight
                      : AppSVG.finshBookingVictorDark,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color:
                        Theme.of(context).brightness == Brightness.light
                            ? Colors.grey.withOpacity(0.2)
                            : Colors.white.withOpacity(0.2),
                    blurRadius: 2,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking Details",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  hSize(12),
                  Row(
                    children: [
                      const Icon(Icons.directions_car, size: 20),
                      wSize(8),
                      Text("${carModel.brand} • ${carModel.model}  "),
                    ],
                  ),
                  hSize(8),
                  Row(
                    children: [
                      const Icon(Icons.calendar_month, size: 20),
                      wSize(8),
                      Text("Pick-up: $pickDate"),
                    ],
                  ),
                  hSize(8),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today, size: 20),
                      wSize(8),
                      Text("Return: $returnDate"),
                    ],
                  ),
                  hSize(20),
                  const Divider(),
                  hSize(12),
                  Text(
                    "You will receive a notification in the app with the booking status. You can also check the status from the 'Requests' screen.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  hSize(12),
                  Text(
                    "If you face any issue, feel free to contact us:",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  hSize(8),
                  Row(
                    children: [
                      const Icon(Icons.phone, size: 18),
                      wSize(8),
                      const Text("+966 555 000 123"),
                    ],
                  ),
                  hSize(6),
                  Row(
                    children: [
                      const Icon(Icons.chat, size: 18, color: Colors.green),
                      wSize(8),
                      const Text("WhatsApp: +966 555 000 123"),
                    ],
                  ),

                  hSize(24),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.goNamed(Routes.carHomeScreen);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
