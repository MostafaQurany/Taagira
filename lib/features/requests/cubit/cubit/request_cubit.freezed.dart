// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RequestState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestState()';
}


}

/// @nodoc
class $RequestStateCopyWith<$Res>  {
$RequestStateCopyWith(RequestState _, $Res Function(RequestState) __);
}


/// @nodoc


class _Initial implements RequestState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestState.initial()';
}


}




/// @nodoc


class CreateRequestLoading implements RequestState {
  const CreateRequestLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRequestLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestState.createRequestLoading()';
}


}




/// @nodoc


class CreateRequestError implements RequestState {
  const CreateRequestError(this.message);
  

 final  String message;

/// Create a copy of RequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateRequestErrorCopyWith<CreateRequestError> get copyWith => _$CreateRequestErrorCopyWithImpl<CreateRequestError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRequestError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RequestState.createRequestError(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateRequestErrorCopyWith<$Res> implements $RequestStateCopyWith<$Res> {
  factory $CreateRequestErrorCopyWith(CreateRequestError value, $Res Function(CreateRequestError) _then) = _$CreateRequestErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateRequestErrorCopyWithImpl<$Res>
    implements $CreateRequestErrorCopyWith<$Res> {
  _$CreateRequestErrorCopyWithImpl(this._self, this._then);

  final CreateRequestError _self;
  final $Res Function(CreateRequestError) _then;

/// Create a copy of RequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CreateRequestError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateRequestSuccess implements RequestState {
  const CreateRequestSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateRequestSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestState.createRequestSuccess()';
}


}




/// @nodoc


class CancelRequestLoading implements RequestState {
  const CancelRequestLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelRequestLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestState.cancelRequestLoading()';
}


}




/// @nodoc


class CancelRequestError implements RequestState {
  const CancelRequestError(this.message);
  

 final  String message;

/// Create a copy of RequestState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelRequestErrorCopyWith<CancelRequestError> get copyWith => _$CancelRequestErrorCopyWithImpl<CancelRequestError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelRequestError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RequestState.cancelRequestError(message: $message)';
}


}

/// @nodoc
abstract mixin class $CancelRequestErrorCopyWith<$Res> implements $RequestStateCopyWith<$Res> {
  factory $CancelRequestErrorCopyWith(CancelRequestError value, $Res Function(CancelRequestError) _then) = _$CancelRequestErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CancelRequestErrorCopyWithImpl<$Res>
    implements $CancelRequestErrorCopyWith<$Res> {
  _$CancelRequestErrorCopyWithImpl(this._self, this._then);

  final CancelRequestError _self;
  final $Res Function(CancelRequestError) _then;

/// Create a copy of RequestState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CancelRequestError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CancelRequestSuccess implements RequestState {
  const CancelRequestSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelRequestSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestState.cancelRequestSuccess()';
}


}




// dart format on
