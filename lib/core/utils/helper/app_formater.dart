import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/theme/app_text_styles.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';
import 'package:taggira/core/utils/helper/extension.dart';

class AppFormatter {
  static DateTime? getBirthdateFromNationalId(String nationalId) {
    if (nationalId.length != 14) return null;

    final centuryDigit = nationalId[0];
    final yearPart = nationalId.substring(1, 3);
    final monthPart = nationalId.substring(3, 5);
    final dayPart = nationalId.substring(5, 7);

    int century;
    switch (centuryDigit) {
      case '2':
        century = 1900;
        break;
      case '3':
        century = 2000;
        break;
      case '4':
        century = 2100; // future case
        break;
      default:
        return null; // invalid or unsupported
    }

    try {
      final year = century + int.parse(yearPart);
      final month = int.parse(monthPart);
      final day = int.parse(dayPart);

      return DateTime(year, month, day);
    } catch (e) {
      return null;
    }
  }

  static String formatTimeStamp(Timestamp ts) {
    final dt = ts.toDate();
    final now = DateTime.now();
    if (DateUtils.isSameDay(dt, now)) return "Today";
    if (DateUtils.isSameDay(dt, now.subtract(const Duration(days: 1)))) {
      return "Yesterday";
    }
    return DateFormat('dd MMM yyyy').format(dt);
  }

  static String formatDateTime(DateTime ts) {
    final dt = ts;
    final now = DateTime.now();
    if (DateUtils.isSameDay(dt, now)) return "Today";
    if (DateUtils.isSameDay(dt, now.subtract(const Duration(days: 1)))) {
      return "Yesterday";
    }
    return DateFormat('dd MMM yyyy').format(dt);
  }

  static Color getStatusColor(String state) {
    switch (state) {
      case 'waiting':
        return AppColors.orange;
      case 'booked':
        return AppColors.green;
      case 'done':
        return AppColors.primary;
      case 'cancelled':
        return Colors.blueGrey;
      case 'rejected':
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  static Widget getStatusMessage(String state) {
    switch (state) {
      case 'waiting':
        return _getStatusMessageWidget(
          message: "New Booking",
          textColor: getStatusColor(state),
          icon: Icons.watch_later_outlined,
        );
      case 'booked':
        return _getStatusMessageWidget(
          message: "Confirmed",
          textColor: getStatusColor(state),
          icon: Icons.check_outlined,
        );
      case 'done':
        return _getStatusMessageWidget(
          message: "Completed",
          textColor: getStatusColor(state),
          icon: Icons.check_circle,
        );
      case 'cancelled':
        return _getStatusMessageWidget(
          message: "Cancelled",
          textColor: getStatusColor(state),
          icon: Icons.cancel,
        );
      case 'rejected':
        return _getStatusMessageWidget(
          message: "Rejected",
          textColor: getStatusColor(state),
          icon: Icons.cancel_outlined,
        );
      default:
        return _getStatusMessageWidget(
          message: "New Booking",
          textColor: getStatusColor(state),
          icon: Icons.watch_later_outlined,
        );
    }
  }

  static _getStatusMessageWidget({
    required String message,
    required IconData icon,
    required Color textColor,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          message,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            fontFamily: MyTextStyles.openSans,
            color: textColor,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        wSize(5),
        Icon(icon, color: textColor, size: 16.sp),
      ],
    );
  }
}

// Custom JsonConverter for Timestamp
class TimestampConverter implements JsonConverter<Timestamp?, Object?> {
  const TimestampConverter();

  @override
  Timestamp? fromJson(Object? json) {
    if (json == null) return null;
    if (json is Timestamp) return json;
    if (json is int) {
      return Timestamp.fromMillisecondsSinceEpoch(json);
    }
    if (json is String) {
      try {
        return Timestamp.fromDate(DateTime.parse(json));
      } catch (_) {
        return null;
      }
    }
    throw ArgumentError.value(json, 'json', 'Could not convert to Timestamp.');
  }

  @override
  Object? toJson(Timestamp? value) => value;
}
