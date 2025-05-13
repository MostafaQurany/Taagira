// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CarModel {

 String get id; String get ownerId; List<String> get images; String get brand;// e.g., Toyota
 String get model;// e.g., Corolla
 int get year;// e.g., 2022
 CarType get type;// Enum
 CarTransmission get transmission;// e.g., Automatic / Manual
 CarFuelType get fuelType;// e.g., Petrol / Diesel / Electric / Hybrid
 int get seats;// e.g., 5
 String get color;// e.g., White
 int get pricePerDay;// Daily rental price
 String get location;// e.g., Cairo, Egypt
 double get rating;// Average rating (updated from reviews)
 bool get isAvailable;// availability status
 DateTime get createdAt;// Firestore timestamp
// Optional extra details
 String get description; bool get hasAC; bool get hasBluetooth; bool get hasGPS; bool get hasDriver; bool get isFavorite;
/// Create a copy of CarModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CarModelCopyWith<CarModel> get copyWith => _$CarModelCopyWithImpl<CarModel>(this as CarModel, _$identity);

  /// Serializes this CarModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.year, year) || other.year == year)&&(identical(other.type, type) || other.type == type)&&(identical(other.transmission, transmission) || other.transmission == transmission)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.color, color) || other.color == color)&&(identical(other.pricePerDay, pricePerDay) || other.pricePerDay == pricePerDay)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.hasAC, hasAC) || other.hasAC == hasAC)&&(identical(other.hasBluetooth, hasBluetooth) || other.hasBluetooth == hasBluetooth)&&(identical(other.hasGPS, hasGPS) || other.hasGPS == hasGPS)&&(identical(other.hasDriver, hasDriver) || other.hasDriver == hasDriver)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,ownerId,const DeepCollectionEquality().hash(images),brand,model,year,type,transmission,fuelType,seats,color,pricePerDay,location,rating,isAvailable,createdAt,description,hasAC,hasBluetooth,hasGPS,hasDriver,isFavorite]);

@override
String toString() {
  return 'CarModel(id: $id, ownerId: $ownerId, images: $images, brand: $brand, model: $model, year: $year, type: $type, transmission: $transmission, fuelType: $fuelType, seats: $seats, color: $color, pricePerDay: $pricePerDay, location: $location, rating: $rating, isAvailable: $isAvailable, createdAt: $createdAt, description: $description, hasAC: $hasAC, hasBluetooth: $hasBluetooth, hasGPS: $hasGPS, hasDriver: $hasDriver, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $CarModelCopyWith<$Res>  {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) _then) = _$CarModelCopyWithImpl;
@useResult
$Res call({
 String id, String ownerId, List<String> images, String brand, String model, int year, CarType type, CarTransmission transmission, CarFuelType fuelType, int seats, String color, int pricePerDay, String location, double rating, bool isAvailable, DateTime createdAt, String description, bool hasAC, bool hasBluetooth, bool hasGPS, bool hasDriver, bool isFavorite
});




}
/// @nodoc
class _$CarModelCopyWithImpl<$Res>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._self, this._then);

  final CarModel _self;
  final $Res Function(CarModel) _then;

/// Create a copy of CarModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ownerId = null,Object? images = null,Object? brand = null,Object? model = null,Object? year = null,Object? type = null,Object? transmission = null,Object? fuelType = null,Object? seats = null,Object? color = null,Object? pricePerDay = null,Object? location = null,Object? rating = null,Object? isAvailable = null,Object? createdAt = null,Object? description = null,Object? hasAC = null,Object? hasBluetooth = null,Object? hasGPS = null,Object? hasDriver = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CarType,transmission: null == transmission ? _self.transmission : transmission // ignore: cast_nullable_to_non_nullable
as CarTransmission,fuelType: null == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as CarFuelType,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,pricePerDay: null == pricePerDay ? _self.pricePerDay : pricePerDay // ignore: cast_nullable_to_non_nullable
as int,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,hasAC: null == hasAC ? _self.hasAC : hasAC // ignore: cast_nullable_to_non_nullable
as bool,hasBluetooth: null == hasBluetooth ? _self.hasBluetooth : hasBluetooth // ignore: cast_nullable_to_non_nullable
as bool,hasGPS: null == hasGPS ? _self.hasGPS : hasGPS // ignore: cast_nullable_to_non_nullable
as bool,hasDriver: null == hasDriver ? _self.hasDriver : hasDriver // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CarModel implements CarModel {
  const _CarModel({required this.id, required this.ownerId, required final  List<String> images, required this.brand, required this.model, required this.year, required this.type, required this.transmission, required this.fuelType, required this.seats, required this.color, required this.pricePerDay, required this.location, this.rating = 0.0, required this.isAvailable, required this.createdAt, this.description = '', this.hasAC = false, this.hasBluetooth = false, this.hasGPS = false, this.hasDriver = false, this.isFavorite = false}): _images = images;
  factory _CarModel.fromJson(Map<String, dynamic> json) => _$CarModelFromJson(json);

@override final  String id;
@override final  String ownerId;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  String brand;
// e.g., Toyota
@override final  String model;
// e.g., Corolla
@override final  int year;
// e.g., 2022
@override final  CarType type;
// Enum
@override final  CarTransmission transmission;
// e.g., Automatic / Manual
@override final  CarFuelType fuelType;
// e.g., Petrol / Diesel / Electric / Hybrid
@override final  int seats;
// e.g., 5
@override final  String color;
// e.g., White
@override final  int pricePerDay;
// Daily rental price
@override final  String location;
// e.g., Cairo, Egypt
@override@JsonKey() final  double rating;
// Average rating (updated from reviews)
@override final  bool isAvailable;
// availability status
@override final  DateTime createdAt;
// Firestore timestamp
// Optional extra details
@override@JsonKey() final  String description;
@override@JsonKey() final  bool hasAC;
@override@JsonKey() final  bool hasBluetooth;
@override@JsonKey() final  bool hasGPS;
@override@JsonKey() final  bool hasDriver;
@override@JsonKey() final  bool isFavorite;

/// Create a copy of CarModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CarModelCopyWith<_CarModel> get copyWith => __$CarModelCopyWithImpl<_CarModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CarModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CarModel&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.year, year) || other.year == year)&&(identical(other.type, type) || other.type == type)&&(identical(other.transmission, transmission) || other.transmission == transmission)&&(identical(other.fuelType, fuelType) || other.fuelType == fuelType)&&(identical(other.seats, seats) || other.seats == seats)&&(identical(other.color, color) || other.color == color)&&(identical(other.pricePerDay, pricePerDay) || other.pricePerDay == pricePerDay)&&(identical(other.location, location) || other.location == location)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.description, description) || other.description == description)&&(identical(other.hasAC, hasAC) || other.hasAC == hasAC)&&(identical(other.hasBluetooth, hasBluetooth) || other.hasBluetooth == hasBluetooth)&&(identical(other.hasGPS, hasGPS) || other.hasGPS == hasGPS)&&(identical(other.hasDriver, hasDriver) || other.hasDriver == hasDriver)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,ownerId,const DeepCollectionEquality().hash(_images),brand,model,year,type,transmission,fuelType,seats,color,pricePerDay,location,rating,isAvailable,createdAt,description,hasAC,hasBluetooth,hasGPS,hasDriver,isFavorite]);

@override
String toString() {
  return 'CarModel(id: $id, ownerId: $ownerId, images: $images, brand: $brand, model: $model, year: $year, type: $type, transmission: $transmission, fuelType: $fuelType, seats: $seats, color: $color, pricePerDay: $pricePerDay, location: $location, rating: $rating, isAvailable: $isAvailable, createdAt: $createdAt, description: $description, hasAC: $hasAC, hasBluetooth: $hasBluetooth, hasGPS: $hasGPS, hasDriver: $hasDriver, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$CarModelCopyWith<$Res> implements $CarModelCopyWith<$Res> {
  factory _$CarModelCopyWith(_CarModel value, $Res Function(_CarModel) _then) = __$CarModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String ownerId, List<String> images, String brand, String model, int year, CarType type, CarTransmission transmission, CarFuelType fuelType, int seats, String color, int pricePerDay, String location, double rating, bool isAvailable, DateTime createdAt, String description, bool hasAC, bool hasBluetooth, bool hasGPS, bool hasDriver, bool isFavorite
});




}
/// @nodoc
class __$CarModelCopyWithImpl<$Res>
    implements _$CarModelCopyWith<$Res> {
  __$CarModelCopyWithImpl(this._self, this._then);

  final _CarModel _self;
  final $Res Function(_CarModel) _then;

/// Create a copy of CarModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ownerId = null,Object? images = null,Object? brand = null,Object? model = null,Object? year = null,Object? type = null,Object? transmission = null,Object? fuelType = null,Object? seats = null,Object? color = null,Object? pricePerDay = null,Object? location = null,Object? rating = null,Object? isAvailable = null,Object? createdAt = null,Object? description = null,Object? hasAC = null,Object? hasBluetooth = null,Object? hasGPS = null,Object? hasDriver = null,Object? isFavorite = null,}) {
  return _then(_CarModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CarType,transmission: null == transmission ? _self.transmission : transmission // ignore: cast_nullable_to_non_nullable
as CarTransmission,fuelType: null == fuelType ? _self.fuelType : fuelType // ignore: cast_nullable_to_non_nullable
as CarFuelType,seats: null == seats ? _self.seats : seats // ignore: cast_nullable_to_non_nullable
as int,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,pricePerDay: null == pricePerDay ? _self.pricePerDay : pricePerDay // ignore: cast_nullable_to_non_nullable
as int,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,hasAC: null == hasAC ? _self.hasAC : hasAC // ignore: cast_nullable_to_non_nullable
as bool,hasBluetooth: null == hasBluetooth ? _self.hasBluetooth : hasBluetooth // ignore: cast_nullable_to_non_nullable
as bool,hasGPS: null == hasGPS ? _self.hasGPS : hasGPS // ignore: cast_nullable_to_non_nullable
as bool,hasDriver: null == hasDriver ? _self.hasDriver : hasDriver // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
