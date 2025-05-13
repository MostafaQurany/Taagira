import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';

enum CarType {
  @JsonValue('sedan')
  sedan,
  @JsonValue('suv')
  suv,
  @JsonValue('hatchback')
  hatchback,
  @JsonValue('truck')
  truck,
  @JsonValue('van')
  van,
  @JsonValue('coupe')
  coupe,
  @JsonValue('convertible')
  convertible,
  @JsonValue('other')
  other,
}

enum CarTransmission {
  @JsonValue('automatic')
  automatic,
  @JsonValue('manual')
  manual,
  @JsonValue('other')
  other,
}

enum CarFuelType {
  @JsonValue('petrol')
  petrol,
  @JsonValue('diesel')
  diesel,
  @JsonValue('electric')
  electric,
  @JsonValue('hybrid')
  hybrid,
  @JsonValue('other')
  other,
}

@freezed
abstract class CarModel with _$CarModel {
  const factory CarModel({
    required String id,
    required String ownerId,
    required List<String> images,

    required String brand, // e.g., Toyota
    required String model, // e.g., Corolla
    required int year, // e.g., 2022
    required CarType type, // Enum
    required CarTransmission transmission, // e.g., Automatic / Manual
    required CarFuelType fuelType, // e.g., Petrol / Diesel / Electric / Hybrid
    required int seats, // e.g., 5
    required String color, // e.g., White

    required int pricePerDay, // Daily rental price
    required String location, // e.g., Cairo, Egypt
    @Default(0.0) double rating, // Average rating (updated from reviews)

    required bool isAvailable, // availability status
    required DateTime createdAt, // Firestore timestamp
    // Optional extra details
    @Default('') String description,
    @Default(false) bool hasAC,
    @Default(false) bool hasBluetooth,
    @Default(false) bool hasGPS,
    @Default(false) bool hasDriver,
    @Default(false) bool isFavorite,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
