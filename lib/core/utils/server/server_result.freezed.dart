// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServerResult<T> implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerResult<$T>'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerResult<$T>()';
}


}

/// @nodoc
class $ServerResultCopyWith<T,$Res>  {
$ServerResultCopyWith(ServerResult<T> _, $Res Function(ServerResult<T>) __);
}


/// @nodoc


class ServerSuccess<T> with DiagnosticableTreeMixin implements ServerResult<T> {
  const ServerSuccess(this.data);
  

 final  T data;

/// Create a copy of ServerResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerSuccessCopyWith<T, ServerSuccess<T>> get copyWith => _$ServerSuccessCopyWithImpl<T, ServerSuccess<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerResult<$T>.success'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerResult<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $ServerSuccessCopyWith<T,$Res> implements $ServerResultCopyWith<T, $Res> {
  factory $ServerSuccessCopyWith(ServerSuccess<T> value, $Res Function(ServerSuccess<T>) _then) = _$ServerSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ServerSuccessCopyWithImpl<T,$Res>
    implements $ServerSuccessCopyWith<T, $Res> {
  _$ServerSuccessCopyWithImpl(this._self, this._then);

  final ServerSuccess<T> _self;
  final $Res Function(ServerSuccess<T>) _then;

/// Create a copy of ServerResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ServerSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ServerError<T> with DiagnosticableTreeMixin implements ServerResult<T> {
  const ServerError(this.message);
  

 final  String message;

/// Create a copy of ServerResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerErrorCopyWith<T, ServerError<T>> get copyWith => _$ServerErrorCopyWithImpl<T, ServerError<T>>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServerResult<$T>.error'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServerResult<$T>.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerErrorCopyWith<T,$Res> implements $ServerResultCopyWith<T, $Res> {
  factory $ServerErrorCopyWith(ServerError<T> value, $Res Function(ServerError<T>) _then) = _$ServerErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ServerErrorCopyWithImpl<T,$Res>
    implements $ServerErrorCopyWith<T, $Res> {
  _$ServerErrorCopyWithImpl(this._self, this._then);

  final ServerError<T> _self;
  final $Res Function(ServerError<T>) _then;

/// Create a copy of ServerResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ServerError<T>(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
