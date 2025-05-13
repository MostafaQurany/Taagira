// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_car_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddCarState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCarState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCarState()';
}


}

/// @nodoc
class $AddCarStateCopyWith<$Res>  {
$AddCarStateCopyWith(AddCarState _, $Res Function(AddCarState) __);
}


/// @nodoc


class _Initial implements AddCarState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCarState.initial()';
}


}




/// @nodoc


class AddCarLoading implements AddCarState {
  const AddCarLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCarLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCarState.addCarloading()';
}


}




/// @nodoc


class AddCarSuccess implements AddCarState {
  const AddCarSuccess(this.message);
  

 final  String message;

/// Create a copy of AddCarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCarSuccessCopyWith<AddCarSuccess> get copyWith => _$AddCarSuccessCopyWithImpl<AddCarSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCarSuccess&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddCarState.addCarSuccess(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddCarSuccessCopyWith<$Res> implements $AddCarStateCopyWith<$Res> {
  factory $AddCarSuccessCopyWith(AddCarSuccess value, $Res Function(AddCarSuccess) _then) = _$AddCarSuccessCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddCarSuccessCopyWithImpl<$Res>
    implements $AddCarSuccessCopyWith<$Res> {
  _$AddCarSuccessCopyWithImpl(this._self, this._then);

  final AddCarSuccess _self;
  final $Res Function(AddCarSuccess) _then;

/// Create a copy of AddCarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddCarSuccess(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddCarError implements AddCarState {
  const AddCarError(this.message);
  

 final  String message;

/// Create a copy of AddCarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCarErrorCopyWith<AddCarError> get copyWith => _$AddCarErrorCopyWithImpl<AddCarError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCarError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddCarState.addCarError(message: $message)';
}


}

/// @nodoc
abstract mixin class $AddCarErrorCopyWith<$Res> implements $AddCarStateCopyWith<$Res> {
  factory $AddCarErrorCopyWith(AddCarError value, $Res Function(AddCarError) _then) = _$AddCarErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AddCarErrorCopyWithImpl<$Res>
    implements $AddCarErrorCopyWith<$Res> {
  _$AddCarErrorCopyWithImpl(this._self, this._then);

  final AddCarError _self;
  final $Res Function(AddCarError) _then;

/// Create a copy of AddCarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AddCarError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddCarClear implements AddCarState {
  const AddCarClear();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCarClear);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCarState.addCarClear()';
}


}




// dart format on
