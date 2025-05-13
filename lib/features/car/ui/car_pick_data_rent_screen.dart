import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart'; // Import the date range picker package

class CarPickDataRentScreen extends StatefulWidget {
  final CarModel carModel;
  const CarPickDataRentScreen({super.key, required this.carModel});

  @override
  State<CarPickDataRentScreen> createState() => CarPickDataRentScreenState();
}

class CarPickDataRentScreenState extends State<CarPickDataRentScreen> {
  // Variables to store the pickup and return dates
  DateTime? pickupDate;
  DateTime? returnDate;

  // Controller for the Syncfusion date range picker
  final DateRangePickerController _datePickerController =
      DateRangePickerController();

  @override
  void initState() {
    super.initState();
    // Set the initial selection mode for the date picker
    _datePickerController.view = DateRangePickerView.month;
  }

  // Callback function when the selected range changes in the date picker
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // Check if the selected value is a date range
    if (args.value is PickerDateRange) {
      // Update pickup and return dates from the selected range
      setState(() {
        pickupDate = args.value.startDate;
        returnDate = args.value.endDate;
      });
    } else if (args.value is DateTime) {
      // Handle single date selection to define the start and end of the range
      if (pickupDate == null) {
        setState(() {
          pickupDate = args.value;
          returnDate = null; // Reset end date for a new selection
        });
      } else if (returnDate == null && args.value.isAfter(pickupDate!)) {
        setState(() {
          returnDate = args.value;
        });
      } else {
        setState(() {
          pickupDate = args.value;
          returnDate = null; // Start a new selection
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Date & Month'),
        centerTitle: true,
        actions: [IconButton(icon: const Icon(Icons.share), onPressed: () {})],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Car image section
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.asset(
                        AppImges.carImagePlaceholder,
                        height: 180.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 16.h),

                    // Calendar section using Syncfusion Date Range Picker
                    Text(
                      'Calendar',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.h),

                    // Using SfDateRangePicker for date range selection
                    SfDateRangePicker(
                      controller: _datePickerController,
                      selectionMode:
                          DateRangePickerSelectionMode
                              .range, // Enable range selection
                      initialSelectedRange:
                          pickupDate != null && returnDate != null
                              ? PickerDateRange(pickupDate!, returnDate!)
                              : null,
                      onSelectionChanged: _onSelectionChanged,
                      monthViewSettings: DateRangePickerMonthViewSettings(
                        viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          textStyle: Theme.of(context).textTheme.bodyMedium,
                        ),
                        weekNumberStyle: DateRangePickerWeekNumberStyle(
                          textStyle: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      headerStyle: DateRangePickerHeaderStyle(
                        textAlign: TextAlign.center,
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                      ),
                      yearCellStyle: DateRangePickerYearCellStyle(
                        todayTextStyle: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: AppColors.primary),
                        textStyle: Theme.of(context).textTheme.bodyMedium,
                      ),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                        todayTextStyle: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: AppColors.primary),
                        textStyle: Theme.of(context).textTheme.bodyMedium,

                        // Customize the appearance of the selected range
                        selectionColor:
                            AppColors
                                .primary, // Color for the start and end dates
                        rangeSelectionColor:
                            AppColors
                                .softPrimary, // Color for the in-between dates
                        rangeTextStyle: Theme.of(
                          context,
                        ).textTheme.bodySmall!.copyWith(
                          color: AppColors.white,
                        ), // Text color for the in-between dates
                      ),
                      enablePastDates: false,
                    ),
                    SizedBox(height: 16.h),

                    // Pick time summary section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildDateBox('Date of Pickup', pickupDate),
                        _buildDateBox('Date of Return', returnDate),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Continue button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Call CarCubit.submitBooking(pickupDate, returnDate);
                  if (pickupDate != null && returnDate != null) {
                    print('Pickup Date: $pickupDate, Return Date: $returnDate');
                    // You can now proceed with the booking using the selected dates
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Please select both pickup and return dates.',
                        ),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                ),
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build a date information box
  Widget _buildDateBox(String label, DateTime? date) {
    return Container(
      decoration: BoxDecoration(
        color:
            Theme.of(context).brightness == Brightness.light
                ? AppColors.primary
                : AppColors.darkGray,
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            date != null
                ? '${date.day}-${date.month}-${date.year}'
                : '--/--/----',
            style: TextStyle(
              fontSize: 14.sp,
              color:
                  Theme.of(context).brightness == Brightness.light
                      ? AppColors.white
                      : AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
