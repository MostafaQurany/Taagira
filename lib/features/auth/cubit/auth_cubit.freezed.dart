// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class LoadingGetOtp implements AuthState {
  const LoadingGetOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingGetOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loadingGetOtp()';
}


}




/// @nodoc


class SuccessGetOtp implements AuthState {
  const SuccessGetOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessGetOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.successGetOtp()';
}


}




/// @nodoc


class ErrorGetOtp implements AuthState {
  const ErrorGetOtp(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorGetOtpCopyWith<ErrorGetOtp> get copyWith => _$ErrorGetOtpCopyWithImpl<ErrorGetOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorGetOtp&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.errorGetOtp(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorGetOtpCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorGetOtpCopyWith(ErrorGetOtp value, $Res Function(ErrorGetOtp) _then) = _$ErrorGetOtpCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorGetOtpCopyWithImpl<$Res>
    implements $ErrorGetOtpCopyWith<$Res> {
  _$ErrorGetOtpCopyWithImpl(this._self, this._then);

  final ErrorGetOtp _self;
  final $Res Function(ErrorGetOtp) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorGetOtp(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingVerifyOtp implements AuthState {
  const LoadingVerifyOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingVerifyOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loadingVerifyOtp()';
}


}




/// @nodoc


class SuccessVerifyOtp implements AuthState {
  const SuccessVerifyOtp(this.userModel);
  

 final  UserModel userModel;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessVerifyOtpCopyWith<SuccessVerifyOtp> get copyWith => _$SuccessVerifyOtpCopyWithImpl<SuccessVerifyOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessVerifyOtp&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,userModel);

@override
String toString() {
  return 'AuthState.successVerifyOtp(userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class $SuccessVerifyOtpCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SuccessVerifyOtpCopyWith(SuccessVerifyOtp value, $Res Function(SuccessVerifyOtp) _then) = _$SuccessVerifyOtpCopyWithImpl;
@useResult
$Res call({
 UserModel userModel
});


$UserModelCopyWith<$Res> get userModel;

}
/// @nodoc
class _$SuccessVerifyOtpCopyWithImpl<$Res>
    implements $SuccessVerifyOtpCopyWith<$Res> {
  _$SuccessVerifyOtpCopyWithImpl(this._self, this._then);

  final SuccessVerifyOtp _self;
  final $Res Function(SuccessVerifyOtp) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userModel = null,}) {
  return _then(SuccessVerifyOtp(
null == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get userModel {
  
  return $UserModelCopyWith<$Res>(_self.userModel, (value) {
    return _then(_self.copyWith(userModel: value));
  });
}
}

/// @nodoc


class ErrorVerifyOtp implements AuthState {
  const ErrorVerifyOtp(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorVerifyOtpCopyWith<ErrorVerifyOtp> get copyWith => _$ErrorVerifyOtpCopyWithImpl<ErrorVerifyOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorVerifyOtp&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.errorVerifyOtp(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorVerifyOtpCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorVerifyOtpCopyWith(ErrorVerifyOtp value, $Res Function(ErrorVerifyOtp) _then) = _$ErrorVerifyOtpCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorVerifyOtpCopyWithImpl<$Res>
    implements $ErrorVerifyOtpCopyWith<$Res> {
  _$ErrorVerifyOtpCopyWithImpl(this._self, this._then);

  final ErrorVerifyOtp _self;
  final $Res Function(ErrorVerifyOtp) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorVerifyOtp(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuccessCreateUser implements AuthState {
  const SuccessCreateUser(this.user);
  

 final  UserModel user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCreateUserCopyWith<SuccessCreateUser> get copyWith => _$SuccessCreateUserCopyWithImpl<SuccessCreateUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessCreateUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.successCreateUser(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessCreateUserCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SuccessCreateUserCopyWith(SuccessCreateUser value, $Res Function(SuccessCreateUser) _then) = _$SuccessCreateUserCopyWithImpl;
@useResult
$Res call({
 UserModel user
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$SuccessCreateUserCopyWithImpl<$Res>
    implements $SuccessCreateUserCopyWith<$Res> {
  _$SuccessCreateUserCopyWithImpl(this._self, this._then);

  final SuccessCreateUser _self;
  final $Res Function(SuccessCreateUser) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SuccessCreateUser(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class UserExitState implements AuthState {
  const UserExitState(this.isUserExsit, this.user);
  

 final  bool isUserExsit;
 final  UserModel user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserExitStateCopyWith<UserExitState> get copyWith => _$UserExitStateCopyWithImpl<UserExitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserExitState&&(identical(other.isUserExsit, isUserExsit) || other.isUserExsit == isUserExsit)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isUserExsit,user);

@override
String toString() {
  return 'AuthState.userExitState(isUserExsit: $isUserExsit, user: $user)';
}


}

/// @nodoc
abstract mixin class $UserExitStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $UserExitStateCopyWith(UserExitState value, $Res Function(UserExitState) _then) = _$UserExitStateCopyWithImpl;
@useResult
$Res call({
 bool isUserExsit, UserModel user
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$UserExitStateCopyWithImpl<$Res>
    implements $UserExitStateCopyWith<$Res> {
  _$UserExitStateCopyWithImpl(this._self, this._then);

  final UserExitState _self;
  final $Res Function(UserExitState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isUserExsit = null,Object? user = null,}) {
  return _then(UserExitState(
null == isUserExsit ? _self.isUserExsit : isUserExsit // ignore: cast_nullable_to_non_nullable
as bool,null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class SuccessCreateUserGoToProfile implements AuthState {
  const SuccessCreateUserGoToProfile(this.userModel);
  

 final  UserModel userModel;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCreateUserGoToProfileCopyWith<SuccessCreateUserGoToProfile> get copyWith => _$SuccessCreateUserGoToProfileCopyWithImpl<SuccessCreateUserGoToProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessCreateUserGoToProfile&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,userModel);

@override
String toString() {
  return 'AuthState.successCreateUserGoToProfile(userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class $SuccessCreateUserGoToProfileCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SuccessCreateUserGoToProfileCopyWith(SuccessCreateUserGoToProfile value, $Res Function(SuccessCreateUserGoToProfile) _then) = _$SuccessCreateUserGoToProfileCopyWithImpl;
@useResult
$Res call({
 UserModel userModel
});


$UserModelCopyWith<$Res> get userModel;

}
/// @nodoc
class _$SuccessCreateUserGoToProfileCopyWithImpl<$Res>
    implements $SuccessCreateUserGoToProfileCopyWith<$Res> {
  _$SuccessCreateUserGoToProfileCopyWithImpl(this._self, this._then);

  final SuccessCreateUserGoToProfile _self;
  final $Res Function(SuccessCreateUserGoToProfile) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userModel = null,}) {
  return _then(SuccessCreateUserGoToProfile(
null == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get userModel {
  
  return $UserModelCopyWith<$Res>(_self.userModel, (value) {
    return _then(_self.copyWith(userModel: value));
  });
}
}

/// @nodoc


class SuccessGetUserGoToHome implements AuthState {
  const SuccessGetUserGoToHome(this.userModel);
  

 final  UserModel userModel;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessGetUserGoToHomeCopyWith<SuccessGetUserGoToHome> get copyWith => _$SuccessGetUserGoToHomeCopyWithImpl<SuccessGetUserGoToHome>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessGetUserGoToHome&&(identical(other.userModel, userModel) || other.userModel == userModel));
}


@override
int get hashCode => Object.hash(runtimeType,userModel);

@override
String toString() {
  return 'AuthState.successGetUserGoToHome(userModel: $userModel)';
}


}

/// @nodoc
abstract mixin class $SuccessGetUserGoToHomeCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $SuccessGetUserGoToHomeCopyWith(SuccessGetUserGoToHome value, $Res Function(SuccessGetUserGoToHome) _then) = _$SuccessGetUserGoToHomeCopyWithImpl;
@useResult
$Res call({
 UserModel userModel
});


$UserModelCopyWith<$Res> get userModel;

}
/// @nodoc
class _$SuccessGetUserGoToHomeCopyWithImpl<$Res>
    implements $SuccessGetUserGoToHomeCopyWith<$Res> {
  _$SuccessGetUserGoToHomeCopyWithImpl(this._self, this._then);

  final SuccessGetUserGoToHome _self;
  final $Res Function(SuccessGetUserGoToHome) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userModel = null,}) {
  return _then(SuccessGetUserGoToHome(
null == userModel ? _self.userModel : userModel // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get userModel {
  
  return $UserModelCopyWith<$Res>(_self.userModel, (value) {
    return _then(_self.copyWith(userModel: value));
  });
}
}

/// @nodoc


class LoadingLogOut implements AuthState {
  const LoadingLogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingLogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loadingLogOut()';
}


}




/// @nodoc


class SuccessLogOut implements AuthState {
  const SuccessLogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessLogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.successLogOut()';
}


}




/// @nodoc


class ErrorLogOut implements AuthState {
  const ErrorLogOut(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorLogOutCopyWith<ErrorLogOut> get copyWith => _$ErrorLogOutCopyWithImpl<ErrorLogOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorLogOut&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.errorLogOut(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorLogOutCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $ErrorLogOutCopyWith(ErrorLogOut value, $Res Function(ErrorLogOut) _then) = _$ErrorLogOutCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorLogOutCopyWithImpl<$Res>
    implements $ErrorLogOutCopyWith<$Res> {
  _$ErrorLogOutCopyWithImpl(this._self, this._then);

  final ErrorLogOut _self;
  final $Res Function(ErrorLogOut) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorLogOut(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
