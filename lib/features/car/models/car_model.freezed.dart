// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$CarModel {
  String get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError; // e.g., Toyota
  String get model => throw _privateConstructorUsedError; // e.g., Corolla
  int get year => throw _privateConstructorUsedError; // e.g., 2022
  CarType get type => throw _privateConstructorUsedError; // Enum
  CarTransmission get transmission =>
      throw _privateConstructorUsedError; // e.g., Automatic / Manual
  CarFuelType get fuelType =>
      throw _privateConstructorUsedError; // e.g., Petrol / Diesel / Electric / Hybrid
  int get seats => throw _privateConstructorUsedError; // e.g., 5
  String get color => throw _privateConstructorUsedError; // e.g., White
  int get pricePerDay =>
      throw _privateConstructorUsedError; // Daily rental price
  String get location =>
      throw _privateConstructorUsedError; // e.g., Cairo, Egypt
  double get rating =>
      throw _privateConstructorUsedError; // Average rating (updated from reviews)
  bool get isAvailable =>
      throw _privateConstructorUsedError; // availability status
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Firestore timestamp
  // Optional extra details
  String get description => throw _privateConstructorUsedError;
  bool get hasAC => throw _privateConstructorUsedError;
  bool get hasBluetooth => throw _privateConstructorUsedError;
  bool get hasGPS => throw _privateConstructorUsedError;

  /// Serializes this CarModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarModelCopyWith<CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelCopyWith<$Res> {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) then) =
      _$CarModelCopyWithImpl<$Res, CarModel>;
  @useResult
  $Res call({
    String id,
    String ownerId,
    List<String> images,
    String brand,
    String model,
    int year,
    CarType type,
    CarTransmission transmission,
    CarFuelType fuelType,
    int seats,
    String color,
    int pricePerDay,
    String location,
    double rating,
    bool isAvailable,
    DateTime createdAt,
    String description,
    bool hasAC,
    bool hasBluetooth,
    bool hasGPS,
  });
}

/// @nodoc
class _$CarModelCopyWithImpl<$Res, $Val extends CarModel>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? images = null,
    Object? brand = null,
    Object? model = null,
    Object? year = null,
    Object? type = null,
    Object? transmission = null,
    Object? fuelType = null,
    Object? seats = null,
    Object? color = null,
    Object? pricePerDay = null,
    Object? location = null,
    Object? rating = null,
    Object? isAvailable = null,
    Object? createdAt = null,
    Object? description = null,
    Object? hasAC = null,
    Object? hasBluetooth = null,
    Object? hasGPS = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            ownerId:
                null == ownerId
                    ? _value.ownerId
                    : ownerId // ignore: cast_nullable_to_non_nullable
                        as String,
            images:
                null == images
                    ? _value.images
                    : images // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            brand:
                null == brand
                    ? _value.brand
                    : brand // ignore: cast_nullable_to_non_nullable
                        as String,
            model:
                null == model
                    ? _value.model
                    : model // ignore: cast_nullable_to_non_nullable
                        as String,
            year:
                null == year
                    ? _value.year
                    : year // ignore: cast_nullable_to_non_nullable
                        as int,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as CarType,
            transmission:
                null == transmission
                    ? _value.transmission
                    : transmission // ignore: cast_nullable_to_non_nullable
                        as CarTransmission,
            fuelType:
                null == fuelType
                    ? _value.fuelType
                    : fuelType // ignore: cast_nullable_to_non_nullable
                        as CarFuelType,
            seats:
                null == seats
                    ? _value.seats
                    : seats // ignore: cast_nullable_to_non_nullable
                        as int,
            color:
                null == color
                    ? _value.color
                    : color // ignore: cast_nullable_to_non_nullable
                        as String,
            pricePerDay:
                null == pricePerDay
                    ? _value.pricePerDay
                    : pricePerDay // ignore: cast_nullable_to_non_nullable
                        as int,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as String,
            rating:
                null == rating
                    ? _value.rating
                    : rating // ignore: cast_nullable_to_non_nullable
                        as double,
            isAvailable:
                null == isAvailable
                    ? _value.isAvailable
                    : isAvailable // ignore: cast_nullable_to_non_nullable
                        as bool,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            hasAC:
                null == hasAC
                    ? _value.hasAC
                    : hasAC // ignore: cast_nullable_to_non_nullable
                        as bool,
            hasBluetooth:
                null == hasBluetooth
                    ? _value.hasBluetooth
                    : hasBluetooth // ignore: cast_nullable_to_non_nullable
                        as bool,
            hasGPS:
                null == hasGPS
                    ? _value.hasGPS
                    : hasGPS // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CarModelImplCopyWith<$Res>
    implements $CarModelCopyWith<$Res> {
  factory _$$CarModelImplCopyWith(
    _$CarModelImpl value,
    $Res Function(_$CarModelImpl) then,
  ) = __$$CarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String ownerId,
    List<String> images,
    String brand,
    String model,
    int year,
    CarType type,
    CarTransmission transmission,
    CarFuelType fuelType,
    int seats,
    String color,
    int pricePerDay,
    String location,
    double rating,
    bool isAvailable,
    DateTime createdAt,
    String description,
    bool hasAC,
    bool hasBluetooth,
    bool hasGPS,
  });
}

/// @nodoc
class __$$CarModelImplCopyWithImpl<$Res>
    extends _$CarModelCopyWithImpl<$Res, _$CarModelImpl>
    implements _$$CarModelImplCopyWith<$Res> {
  __$$CarModelImplCopyWithImpl(
    _$CarModelImpl _value,
    $Res Function(_$CarModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerId = null,
    Object? images = null,
    Object? brand = null,
    Object? model = null,
    Object? year = null,
    Object? type = null,
    Object? transmission = null,
    Object? fuelType = null,
    Object? seats = null,
    Object? color = null,
    Object? pricePerDay = null,
    Object? location = null,
    Object? rating = null,
    Object? isAvailable = null,
    Object? createdAt = null,
    Object? description = null,
    Object? hasAC = null,
    Object? hasBluetooth = null,
    Object? hasGPS = null,
  }) {
    return _then(
      _$CarModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        ownerId:
            null == ownerId
                ? _value.ownerId
                : ownerId // ignore: cast_nullable_to_non_nullable
                    as String,
        images:
            null == images
                ? _value._images
                : images // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        brand:
            null == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                    as String,
        model:
            null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                    as String,
        year:
            null == year
                ? _value.year
                : year // ignore: cast_nullable_to_non_nullable
                    as int,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as CarType,
        transmission:
            null == transmission
                ? _value.transmission
                : transmission // ignore: cast_nullable_to_non_nullable
                    as CarTransmission,
        fuelType:
            null == fuelType
                ? _value.fuelType
                : fuelType // ignore: cast_nullable_to_non_nullable
                    as CarFuelType,
        seats:
            null == seats
                ? _value.seats
                : seats // ignore: cast_nullable_to_non_nullable
                    as int,
        color:
            null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                    as String,
        pricePerDay:
            null == pricePerDay
                ? _value.pricePerDay
                : pricePerDay // ignore: cast_nullable_to_non_nullable
                    as int,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as String,
        rating:
            null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                    as double,
        isAvailable:
            null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                    as bool,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        hasAC:
            null == hasAC
                ? _value.hasAC
                : hasAC // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasBluetooth:
            null == hasBluetooth
                ? _value.hasBluetooth
                : hasBluetooth // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasGPS:
            null == hasGPS
                ? _value.hasGPS
                : hasGPS // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CarModelImpl implements _CarModel {
  const _$CarModelImpl({
    required this.id,
    required this.ownerId,
    required final List<String> images,
    required this.brand,
    required this.model,
    required this.year,
    required this.type,
    required this.transmission,
    required this.fuelType,
    required this.seats,
    required this.color,
    required this.pricePerDay,
    required this.location,
    this.rating = 0.0,
    required this.isAvailable,
    required this.createdAt,
    this.description = '',
    this.hasAC = false,
    this.hasBluetooth = false,
    this.hasGPS = false,
  }) : _images = images;

  factory _$CarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelImplFromJson(json);

  @override
  final String id;
  @override
  final String ownerId;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String brand;
  // e.g., Toyota
  @override
  final String model;
  // e.g., Corolla
  @override
  final int year;
  // e.g., 2022
  @override
  final CarType type;
  // Enum
  @override
  final CarTransmission transmission;
  // e.g., Automatic / Manual
  @override
  final CarFuelType fuelType;
  // e.g., Petrol / Diesel / Electric / Hybrid
  @override
  final int seats;
  // e.g., 5
  @override
  final String color;
  // e.g., White
  @override
  final int pricePerDay;
  // Daily rental price
  @override
  final String location;
  // e.g., Cairo, Egypt
  @override
  @JsonKey()
  final double rating;
  // Average rating (updated from reviews)
  @override
  final bool isAvailable;
  // availability status
  @override
  final DateTime createdAt;
  // Firestore timestamp
  // Optional extra details
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool hasAC;
  @override
  @JsonKey()
  final bool hasBluetooth;
  @override
  @JsonKey()
  final bool hasGPS;

  @override
  String toString() {
    return 'CarModel(id: $id, ownerId: $ownerId, images: $images, brand: $brand, model: $model, year: $year, type: $type, transmission: $transmission, fuelType: $fuelType, seats: $seats, color: $color, pricePerDay: $pricePerDay, location: $location, rating: $rating, isAvailable: $isAvailable, createdAt: $createdAt, description: $description, hasAC: $hasAC, hasBluetooth: $hasBluetooth, hasGPS: $hasGPS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.transmission, transmission) ||
                other.transmission == transmission) &&
            (identical(other.fuelType, fuelType) ||
                other.fuelType == fuelType) &&
            (identical(other.seats, seats) || other.seats == seats) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.pricePerDay, pricePerDay) ||
                other.pricePerDay == pricePerDay) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.hasAC, hasAC) || other.hasAC == hasAC) &&
            (identical(other.hasBluetooth, hasBluetooth) ||
                other.hasBluetooth == hasBluetooth) &&
            (identical(other.hasGPS, hasGPS) || other.hasGPS == hasGPS));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    ownerId,
    const DeepCollectionEquality().hash(_images),
    brand,
    model,
    year,
    type,
    transmission,
    fuelType,
    seats,
    color,
    pricePerDay,
    location,
    rating,
    isAvailable,
    createdAt,
    description,
    hasAC,
    hasBluetooth,
    hasGPS,
  ]);

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      __$$CarModelImplCopyWithImpl<_$CarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarModelImplToJson(this);
  }
}

abstract class _CarModel implements CarModel {
  const factory _CarModel({
    required final String id,
    required final String ownerId,
    required final List<String> images,
    required final String brand,
    required final String model,
    required final int year,
    required final CarType type,
    required final CarTransmission transmission,
    required final CarFuelType fuelType,
    required final int seats,
    required final String color,
    required final int pricePerDay,
    required final String location,
    final double rating,
    required final bool isAvailable,
    required final DateTime createdAt,
    final String description,
    final bool hasAC,
    final bool hasBluetooth,
    final bool hasGPS,
  }) = _$CarModelImpl;

  factory _CarModel.fromJson(Map<String, dynamic> json) =
      _$CarModelImpl.fromJson;

  @override
  String get id;
  @override
  String get ownerId;
  @override
  List<String> get images;
  @override
  String get brand; // e.g., Toyota
  @override
  String get model; // e.g., Corolla
  @override
  int get year; // e.g., 2022
  @override
  CarType get type; // Enum
  @override
  CarTransmission get transmission; // e.g., Automatic / Manual
  @override
  CarFuelType get fuelType; // e.g., Petrol / Diesel / Electric / Hybrid
  @override
  int get seats; // e.g., 5
  @override
  String get color; // e.g., White
  @override
  int get pricePerDay; // Daily rental price
  @override
  String get location; // e.g., Cairo, Egypt
  @override
  double get rating; // Average rating (updated from reviews)
  @override
  bool get isAvailable; // availability status
  @override
  DateTime get createdAt; // Firestore timestamp
  // Optional extra details
  @override
  String get description;
  @override
  bool get hasAC;
  @override
  bool get hasBluetooth;
  @override
  bool get hasGPS;

  /// Create a copy of CarModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
