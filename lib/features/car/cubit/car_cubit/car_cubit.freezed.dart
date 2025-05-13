// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CarState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CarState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CarState()';
}


}

/// @nodoc
class $CarStateCopyWith<$Res>  {
$CarStateCopyWith(CarState _, $Res Function(CarState) __);
}


/// @nodoc


class _Initial implements CarState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CarState.initial()';
}


}




/// @nodoc


class GetAllCarsLoading implements CarState {
  const GetAllCarsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCarsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CarState.getAllCarsLoading()';
}


}




/// @nodoc


class GetAllCarsSuccess implements CarState {
  const GetAllCarsSuccess(final  List<CarModel> cars): _cars = cars;
  

 final  List<CarModel> _cars;
 List<CarModel> get cars {
  if (_cars is EqualUnmodifiableListView) return _cars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cars);
}


/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllCarsSuccessCopyWith<GetAllCarsSuccess> get copyWith => _$GetAllCarsSuccessCopyWithImpl<GetAllCarsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCarsSuccess&&const DeepCollectionEquality().equals(other._cars, _cars));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cars));

@override
String toString() {
  return 'CarState.getAllCarsSuccess(cars: $cars)';
}


}

/// @nodoc
abstract mixin class $GetAllCarsSuccessCopyWith<$Res> implements $CarStateCopyWith<$Res> {
  factory $GetAllCarsSuccessCopyWith(GetAllCarsSuccess value, $Res Function(GetAllCarsSuccess) _then) = _$GetAllCarsSuccessCopyWithImpl;
@useResult
$Res call({
 List<CarModel> cars
});




}
/// @nodoc
class _$GetAllCarsSuccessCopyWithImpl<$Res>
    implements $GetAllCarsSuccessCopyWith<$Res> {
  _$GetAllCarsSuccessCopyWithImpl(this._self, this._then);

  final GetAllCarsSuccess _self;
  final $Res Function(GetAllCarsSuccess) _then;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cars = null,}) {
  return _then(GetAllCarsSuccess(
null == cars ? _self._cars : cars // ignore: cast_nullable_to_non_nullable
as List<CarModel>,
  ));
}


}

/// @nodoc


class GetAllCarsError implements CarState {
  const GetAllCarsError(this.error);
  

 final  String error;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllCarsErrorCopyWith<GetAllCarsError> get copyWith => _$GetAllCarsErrorCopyWithImpl<GetAllCarsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCarsError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CarState.getAllCarsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetAllCarsErrorCopyWith<$Res> implements $CarStateCopyWith<$Res> {
  factory $GetAllCarsErrorCopyWith(GetAllCarsError value, $Res Function(GetAllCarsError) _then) = _$GetAllCarsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GetAllCarsErrorCopyWithImpl<$Res>
    implements $GetAllCarsErrorCopyWith<$Res> {
  _$GetAllCarsErrorCopyWithImpl(this._self, this._then);

  final GetAllCarsError _self;
  final $Res Function(GetAllCarsError) _then;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetAllCarsError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetFavoriteCarsLoading implements CarState {
  const GetFavoriteCarsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteCarsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CarState.getFavoriteCarsLoading()';
}


}




/// @nodoc


class GetFavoriteCarsSuccess implements CarState {
  const GetFavoriteCarsSuccess(final  List<CarModel> cars): _cars = cars;
  

 final  List<CarModel> _cars;
 List<CarModel> get cars {
  if (_cars is EqualUnmodifiableListView) return _cars;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cars);
}


/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFavoriteCarsSuccessCopyWith<GetFavoriteCarsSuccess> get copyWith => _$GetFavoriteCarsSuccessCopyWithImpl<GetFavoriteCarsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteCarsSuccess&&const DeepCollectionEquality().equals(other._cars, _cars));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cars));

@override
String toString() {
  return 'CarState.getFavoriteCarsSuccess(cars: $cars)';
}


}

/// @nodoc
abstract mixin class $GetFavoriteCarsSuccessCopyWith<$Res> implements $CarStateCopyWith<$Res> {
  factory $GetFavoriteCarsSuccessCopyWith(GetFavoriteCarsSuccess value, $Res Function(GetFavoriteCarsSuccess) _then) = _$GetFavoriteCarsSuccessCopyWithImpl;
@useResult
$Res call({
 List<CarModel> cars
});




}
/// @nodoc
class _$GetFavoriteCarsSuccessCopyWithImpl<$Res>
    implements $GetFavoriteCarsSuccessCopyWith<$Res> {
  _$GetFavoriteCarsSuccessCopyWithImpl(this._self, this._then);

  final GetFavoriteCarsSuccess _self;
  final $Res Function(GetFavoriteCarsSuccess) _then;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cars = null,}) {
  return _then(GetFavoriteCarsSuccess(
null == cars ? _self._cars : cars // ignore: cast_nullable_to_non_nullable
as List<CarModel>,
  ));
}


}

/// @nodoc


class GetFavoriteCarsError implements CarState {
  const GetFavoriteCarsError(this.error);
  

 final  String error;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFavoriteCarsErrorCopyWith<GetFavoriteCarsError> get copyWith => _$GetFavoriteCarsErrorCopyWithImpl<GetFavoriteCarsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFavoriteCarsError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CarState.getFavoriteCarsError(error: $error)';
}


}

/// @nodoc
abstract mixin class $GetFavoriteCarsErrorCopyWith<$Res> implements $CarStateCopyWith<$Res> {
  factory $GetFavoriteCarsErrorCopyWith(GetFavoriteCarsError value, $Res Function(GetFavoriteCarsError) _then) = _$GetFavoriteCarsErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$GetFavoriteCarsErrorCopyWithImpl<$Res>
    implements $GetFavoriteCarsErrorCopyWith<$Res> {
  _$GetFavoriteCarsErrorCopyWithImpl(this._self, this._then);

  final GetFavoriteCarsError _self;
  final $Res Function(GetFavoriteCarsError) _then;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(GetFavoriteCarsError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddFavoriteCarsSuccess implements CarState {
  const AddFavoriteCarsSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFavoriteCarsSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CarState.addFavoriteCarsSuccess()';
}


}




/// @nodoc


class RemoveFavoriteCarsSuccess implements CarState {
  const RemoveFavoriteCarsSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFavoriteCarsSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CarState.removeFavoriteCarsSuccess()';
}


}




/// @nodoc


class FavoriteCarsError implements CarState {
  const FavoriteCarsError(this.message);
  

 final  String message;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteCarsErrorCopyWith<FavoriteCarsError> get copyWith => _$FavoriteCarsErrorCopyWithImpl<FavoriteCarsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteCarsError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CarState.favoriteCarsError(message: $message)';
}


}

/// @nodoc
abstract mixin class $FavoriteCarsErrorCopyWith<$Res> implements $CarStateCopyWith<$Res> {
  factory $FavoriteCarsErrorCopyWith(FavoriteCarsError value, $Res Function(FavoriteCarsError) _then) = _$FavoriteCarsErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FavoriteCarsErrorCopyWithImpl<$Res>
    implements $FavoriteCarsErrorCopyWith<$Res> {
  _$FavoriteCarsErrorCopyWithImpl(this._self, this._then);

  final FavoriteCarsError _self;
  final $Res Function(FavoriteCarsError) _then;

/// Create a copy of CarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FavoriteCarsError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
