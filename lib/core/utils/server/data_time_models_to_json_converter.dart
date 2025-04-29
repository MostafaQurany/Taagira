import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverterSerialization
    implements JsonConverter<DateTime, String> {
  const DateTimeConverterSerialization();

  @override
  DateTime fromJson(String? json) =>
      json != null ? DateTime.parse(json) : DateTime.now();

  @override
  String toJson(DateTime? date) =>
      date != null ? date.toIso8601String() : DateTime.now().toIso8601String();
}
