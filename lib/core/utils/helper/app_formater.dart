import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
        return Colors.orange;
      case 'booked':
        return Colors.blue;
      case 'done':
        return Colors.green;
      case 'cancelled':
        return Colors.red;
      case 'rejected':
        return Colors.grey;
      default:
        return Colors.black;
    }
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
