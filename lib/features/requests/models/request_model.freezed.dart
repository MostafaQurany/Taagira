// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestModel {

 String get requestId; String get carId; String get userId; DateTime get pickUpDate; DateTime get returnDate;@TimestampConverter() Timestamp? get createdAt; RequestModelState get requestState;
/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestModelCopyWith<RequestModel> get copyWith => _$RequestModelCopyWithImpl<RequestModel>(this as RequestModel, _$identity);

  /// Serializes this RequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestModel&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.carId, carId) || other.carId == carId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pickUpDate, pickUpDate) || other.pickUpDate == pickUpDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.requestState, requestState) || other.requestState == requestState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,carId,userId,pickUpDate,returnDate,createdAt,requestState);

@override
String toString() {
  return 'RequestModel(requestId: $requestId, carId: $carId, userId: $userId, pickUpDate: $pickUpDate, returnDate: $returnDate, createdAt: $createdAt, requestState: $requestState)';
}


}

/// @nodoc
abstract mixin class $RequestModelCopyWith<$Res>  {
  factory $RequestModelCopyWith(RequestModel value, $Res Function(RequestModel) _then) = _$RequestModelCopyWithImpl;
@useResult
$Res call({
 String requestId, String carId, String userId, DateTime pickUpDate, DateTime returnDate,@TimestampConverter() Timestamp? createdAt, RequestModelState requestState
});




}
/// @nodoc
class _$RequestModelCopyWithImpl<$Res>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._self, this._then);

  final RequestModel _self;
  final $Res Function(RequestModel) _then;

/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestId = null,Object? carId = null,Object? userId = null,Object? pickUpDate = null,Object? returnDate = null,Object? createdAt = freezed,Object? requestState = null,}) {
  return _then(_self.copyWith(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,carId: null == carId ? _self.carId : carId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,pickUpDate: null == pickUpDate ? _self.pickUpDate : pickUpDate // ignore: cast_nullable_to_non_nullable
as DateTime,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as Timestamp?,requestState: null == requestState ? _self.requestState : requestState // ignore: cast_nullable_to_non_nullable
as RequestModelState,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RequestModel implements RequestModel {
   _RequestModel({required this.requestId, required this.carId, required this.userId, required this.pickUpDate, required this.returnDate, @TimestampConverter() this.createdAt, this.requestState = RequestModelState.waiting});
  factory _RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);

@override final  String requestId;
@override final  String carId;
@override final  String userId;
@override final  DateTime pickUpDate;
@override final  DateTime returnDate;
@override@TimestampConverter() final  Timestamp? createdAt;
@override@JsonKey() final  RequestModelState requestState;

/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestModelCopyWith<_RequestModel> get copyWith => __$RequestModelCopyWithImpl<_RequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestModel&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.carId, carId) || other.carId == carId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pickUpDate, pickUpDate) || other.pickUpDate == pickUpDate)&&(identical(other.returnDate, returnDate) || other.returnDate == returnDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.requestState, requestState) || other.requestState == requestState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestId,carId,userId,pickUpDate,returnDate,createdAt,requestState);

@override
String toString() {
  return 'RequestModel(requestId: $requestId, carId: $carId, userId: $userId, pickUpDate: $pickUpDate, returnDate: $returnDate, createdAt: $createdAt, requestState: $requestState)';
}


}

/// @nodoc
abstract mixin class _$RequestModelCopyWith<$Res> implements $RequestModelCopyWith<$Res> {
  factory _$RequestModelCopyWith(_RequestModel value, $Res Function(_RequestModel) _then) = __$RequestModelCopyWithImpl;
@override @useResult
$Res call({
 String requestId, String carId, String userId, DateTime pickUpDate, DateTime returnDate,@TimestampConverter() Timestamp? createdAt, RequestModelState requestState
});




}
/// @nodoc
class __$RequestModelCopyWithImpl<$Res>
    implements _$RequestModelCopyWith<$Res> {
  __$RequestModelCopyWithImpl(this._self, this._then);

  final _RequestModel _self;
  final $Res Function(_RequestModel) _then;

/// Create a copy of RequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestId = null,Object? carId = null,Object? userId = null,Object? pickUpDate = null,Object? returnDate = null,Object? createdAt = freezed,Object? requestState = null,}) {
  return _then(_RequestModel(
requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,carId: null == carId ? _self.carId : carId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,pickUpDate: null == pickUpDate ? _self.pickUpDate : pickUpDate // ignore: cast_nullable_to_non_nullable
as DateTime,returnDate: null == returnDate ? _self.returnDate : returnDate // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as Timestamp?,requestState: null == requestState ? _self.requestState : requestState // ignore: cast_nullable_to_non_nullable
as RequestModelState,
  ));
}


}

// dart format on
