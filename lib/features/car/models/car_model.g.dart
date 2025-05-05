// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarModelImpl _$$CarModelImplFromJson(Map<String, dynamic> json) =>
    _$CarModelImpl(
      id: json['id'] as String,
      ownerId: json['ownerId'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      brand: json['brand'] as String,
      model: json['model'] as String,
      year: (json['year'] as num).toInt(),
      type: $enumDecode(_$CarTypeEnumMap, json['type']),
      transmission: $enumDecode(_$CarTransmissionEnumMap, json['transmission']),
      fuelType: $enumDecode(_$CarFuelTypeEnumMap, json['fuelType']),
      seats: (json['seats'] as num).toInt(),
      color: json['color'] as String,
      pricePerDay: (json['pricePerDay'] as num).toInt(),
      location: json['location'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      isAvailable: json['isAvailable'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String? ?? '',
      hasAC: json['hasAC'] as bool? ?? false,
      hasBluetooth: json['hasBluetooth'] as bool? ?? false,
      hasGPS: json['hasGPS'] as bool? ?? false,
      hasDriver: json['hasDriver'] as bool? ?? false,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$CarModelImplToJson(_$CarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'images': instance.images,
      'brand': instance.brand,
      'model': instance.model,
      'year': instance.year,
      'type': _$CarTypeEnumMap[instance.type]!,
      'transmission': _$CarTransmissionEnumMap[instance.transmission]!,
      'fuelType': _$CarFuelTypeEnumMap[instance.fuelType]!,
      'seats': instance.seats,
      'color': instance.color,
      'pricePerDay': instance.pricePerDay,
      'location': instance.location,
      'rating': instance.rating,
      'isAvailable': instance.isAvailable,
      'createdAt': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'hasAC': instance.hasAC,
      'hasBluetooth': instance.hasBluetooth,
      'hasGPS': instance.hasGPS,
      'hasDriver': instance.hasDriver,
      'isFavorite': instance.isFavorite,
    };

const _$CarTypeEnumMap = {
  CarType.sedan: 'sedan',
  CarType.suv: 'suv',
  CarType.hatchback: 'hatchback',
  CarType.truck: 'truck',
  CarType.van: 'van',
  CarType.coupe: 'coupe',
  CarType.convertible: 'convertible',
  CarType.other: 'other',
};

const _$CarTransmissionEnumMap = {
  CarTransmission.automatic: 'automatic',
  CarTransmission.manual: 'manual',
  CarTransmission.other: 'other',
};

const _$CarFuelTypeEnumMap = {
  CarFuelType.petrol: 'petrol',
  CarFuelType.diesel: 'diesel',
  CarFuelType.electric: 'electric',
  CarFuelType.hybrid: 'hybrid',
  CarFuelType.other: 'other',
};
