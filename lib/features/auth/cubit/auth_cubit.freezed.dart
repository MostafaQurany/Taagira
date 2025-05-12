// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingGetOtpImplCopyWith<$Res> {
  factory _$$LoadingGetOtpImplCopyWith(
    _$LoadingGetOtpImpl value,
    $Res Function(_$LoadingGetOtpImpl) then,
  ) = __$$LoadingGetOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGetOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingGetOtpImpl>
    implements _$$LoadingGetOtpImplCopyWith<$Res> {
  __$$LoadingGetOtpImplCopyWithImpl(
    _$LoadingGetOtpImpl _value,
    $Res Function(_$LoadingGetOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingGetOtpImpl implements LoadingGetOtp {
  const _$LoadingGetOtpImpl();

  @override
  String toString() {
    return 'AuthState.loadingGetOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingGetOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return loadingGetOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return loadingGetOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (loadingGetOtp != null) {
      return loadingGetOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return loadingGetOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return loadingGetOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (loadingGetOtp != null) {
      return loadingGetOtp(this);
    }
    return orElse();
  }
}

abstract class LoadingGetOtp implements AuthState {
  const factory LoadingGetOtp() = _$LoadingGetOtpImpl;
}

/// @nodoc
abstract class _$$SuccessGetOtpImplCopyWith<$Res> {
  factory _$$SuccessGetOtpImplCopyWith(
    _$SuccessGetOtpImpl value,
    $Res Function(_$SuccessGetOtpImpl) then,
  ) = __$$SuccessGetOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessGetOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessGetOtpImpl>
    implements _$$SuccessGetOtpImplCopyWith<$Res> {
  __$$SuccessGetOtpImplCopyWithImpl(
    _$SuccessGetOtpImpl _value,
    $Res Function(_$SuccessGetOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessGetOtpImpl implements SuccessGetOtp {
  const _$SuccessGetOtpImpl();

  @override
  String toString() {
    return 'AuthState.successGetOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessGetOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return successGetOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return successGetOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successGetOtp != null) {
      return successGetOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return successGetOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return successGetOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successGetOtp != null) {
      return successGetOtp(this);
    }
    return orElse();
  }
}

abstract class SuccessGetOtp implements AuthState {
  const factory SuccessGetOtp() = _$SuccessGetOtpImpl;
}

/// @nodoc
abstract class _$$ErrorGetOtpImplCopyWith<$Res> {
  factory _$$ErrorGetOtpImplCopyWith(
    _$ErrorGetOtpImpl value,
    $Res Function(_$ErrorGetOtpImpl) then,
  ) = __$$ErrorGetOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorGetOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorGetOtpImpl>
    implements _$$ErrorGetOtpImplCopyWith<$Res> {
  __$$ErrorGetOtpImplCopyWithImpl(
    _$ErrorGetOtpImpl _value,
    $Res Function(_$ErrorGetOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorGetOtpImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorGetOtpImpl implements ErrorGetOtp {
  const _$ErrorGetOtpImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorGetOtp(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGetOtpImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGetOtpImplCopyWith<_$ErrorGetOtpImpl> get copyWith =>
      __$$ErrorGetOtpImplCopyWithImpl<_$ErrorGetOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return errorGetOtp(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return errorGetOtp?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (errorGetOtp != null) {
      return errorGetOtp(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return errorGetOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return errorGetOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (errorGetOtp != null) {
      return errorGetOtp(this);
    }
    return orElse();
  }
}

abstract class ErrorGetOtp implements AuthState {
  const factory ErrorGetOtp(final String message) = _$ErrorGetOtpImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorGetOtpImplCopyWith<_$ErrorGetOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingVerifyOtpImplCopyWith<$Res> {
  factory _$$LoadingVerifyOtpImplCopyWith(
    _$LoadingVerifyOtpImpl value,
    $Res Function(_$LoadingVerifyOtpImpl) then,
  ) = __$$LoadingVerifyOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingVerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingVerifyOtpImpl>
    implements _$$LoadingVerifyOtpImplCopyWith<$Res> {
  __$$LoadingVerifyOtpImplCopyWithImpl(
    _$LoadingVerifyOtpImpl _value,
    $Res Function(_$LoadingVerifyOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingVerifyOtpImpl implements LoadingVerifyOtp {
  const _$LoadingVerifyOtpImpl();

  @override
  String toString() {
    return 'AuthState.loadingVerifyOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingVerifyOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return loadingVerifyOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return loadingVerifyOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (loadingVerifyOtp != null) {
      return loadingVerifyOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return loadingVerifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return loadingVerifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (loadingVerifyOtp != null) {
      return loadingVerifyOtp(this);
    }
    return orElse();
  }
}

abstract class LoadingVerifyOtp implements AuthState {
  const factory LoadingVerifyOtp() = _$LoadingVerifyOtpImpl;
}

/// @nodoc
abstract class _$$SuccessVerifyOtpImplCopyWith<$Res> {
  factory _$$SuccessVerifyOtpImplCopyWith(
    _$SuccessVerifyOtpImpl value,
    $Res Function(_$SuccessVerifyOtpImpl) then,
  ) = __$$SuccessVerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$SuccessVerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessVerifyOtpImpl>
    implements _$$SuccessVerifyOtpImplCopyWith<$Res> {
  __$$SuccessVerifyOtpImplCopyWithImpl(
    _$SuccessVerifyOtpImpl _value,
    $Res Function(_$SuccessVerifyOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userModel = null}) {
    return _then(
      _$SuccessVerifyOtpImpl(
        null == userModel
            ? _value.userModel
            : userModel // ignore: cast_nullable_to_non_nullable
                as UserModel,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$SuccessVerifyOtpImpl implements SuccessVerifyOtp {
  const _$SuccessVerifyOtpImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'AuthState.successVerifyOtp(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessVerifyOtpImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessVerifyOtpImplCopyWith<_$SuccessVerifyOtpImpl> get copyWith =>
      __$$SuccessVerifyOtpImplCopyWithImpl<_$SuccessVerifyOtpImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return successVerifyOtp(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return successVerifyOtp?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successVerifyOtp != null) {
      return successVerifyOtp(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return successVerifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return successVerifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successVerifyOtp != null) {
      return successVerifyOtp(this);
    }
    return orElse();
  }
}

abstract class SuccessVerifyOtp implements AuthState {
  const factory SuccessVerifyOtp(final UserModel userModel) =
      _$SuccessVerifyOtpImpl;

  UserModel get userModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessVerifyOtpImplCopyWith<_$SuccessVerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorVerifyOtpImplCopyWith<$Res> {
  factory _$$ErrorVerifyOtpImplCopyWith(
    _$ErrorVerifyOtpImpl value,
    $Res Function(_$ErrorVerifyOtpImpl) then,
  ) = __$$ErrorVerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorVerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorVerifyOtpImpl>
    implements _$$ErrorVerifyOtpImplCopyWith<$Res> {
  __$$ErrorVerifyOtpImplCopyWithImpl(
    _$ErrorVerifyOtpImpl _value,
    $Res Function(_$ErrorVerifyOtpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorVerifyOtpImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorVerifyOtpImpl implements ErrorVerifyOtp {
  const _$ErrorVerifyOtpImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.errorVerifyOtp(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorVerifyOtpImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorVerifyOtpImplCopyWith<_$ErrorVerifyOtpImpl> get copyWith =>
      __$$ErrorVerifyOtpImplCopyWithImpl<_$ErrorVerifyOtpImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return errorVerifyOtp(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return errorVerifyOtp?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (errorVerifyOtp != null) {
      return errorVerifyOtp(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return errorVerifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return errorVerifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (errorVerifyOtp != null) {
      return errorVerifyOtp(this);
    }
    return orElse();
  }
}

abstract class ErrorVerifyOtp implements AuthState {
  const factory ErrorVerifyOtp(final String message) = _$ErrorVerifyOtpImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorVerifyOtpImplCopyWith<_$ErrorVerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCreateUserImplCopyWith<$Res> {
  factory _$$SuccessCreateUserImplCopyWith(
    _$SuccessCreateUserImpl value,
    $Res Function(_$SuccessCreateUserImpl) then,
  ) = __$$SuccessCreateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SuccessCreateUserImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessCreateUserImpl>
    implements _$$SuccessCreateUserImplCopyWith<$Res> {
  __$$SuccessCreateUserImplCopyWithImpl(
    _$SuccessCreateUserImpl _value,
    $Res Function(_$SuccessCreateUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$SuccessCreateUserImpl(
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                as UserModel,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SuccessCreateUserImpl implements SuccessCreateUser {
  const _$SuccessCreateUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.successCreateUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCreateUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCreateUserImplCopyWith<_$SuccessCreateUserImpl> get copyWith =>
      __$$SuccessCreateUserImplCopyWithImpl<_$SuccessCreateUserImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return successCreateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return successCreateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successCreateUser != null) {
      return successCreateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return successCreateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return successCreateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successCreateUser != null) {
      return successCreateUser(this);
    }
    return orElse();
  }
}

abstract class SuccessCreateUser implements AuthState {
  const factory SuccessCreateUser(final UserModel user) =
      _$SuccessCreateUserImpl;

  UserModel get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCreateUserImplCopyWith<_$SuccessCreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserExitStateImplCopyWith<$Res> {
  factory _$$UserExitStateImplCopyWith(
    _$UserExitStateImpl value,
    $Res Function(_$UserExitStateImpl) then,
  ) = __$$UserExitStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUserExsit, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserExitStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserExitStateImpl>
    implements _$$UserExitStateImplCopyWith<$Res> {
  __$$UserExitStateImplCopyWithImpl(
    _$UserExitStateImpl _value,
    $Res Function(_$UserExitStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isUserExsit = null, Object? user = null}) {
    return _then(
      _$UserExitStateImpl(
        null == isUserExsit
            ? _value.isUserExsit
            : isUserExsit // ignore: cast_nullable_to_non_nullable
                as bool,
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                as UserModel,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserExitStateImpl implements UserExitState {
  const _$UserExitStateImpl(this.isUserExsit, this.user);

  @override
  final bool isUserExsit;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.userExitState(isUserExsit: $isUserExsit, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExitStateImpl &&
            (identical(other.isUserExsit, isUserExsit) ||
                other.isUserExsit == isUserExsit) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserExsit, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExitStateImplCopyWith<_$UserExitStateImpl> get copyWith =>
      __$$UserExitStateImplCopyWithImpl<_$UserExitStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return userExitState(isUserExsit, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return userExitState?.call(isUserExsit, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (userExitState != null) {
      return userExitState(isUserExsit, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return userExitState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return userExitState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (userExitState != null) {
      return userExitState(this);
    }
    return orElse();
  }
}

abstract class UserExitState implements AuthState {
  const factory UserExitState(final bool isUserExsit, final UserModel user) =
      _$UserExitStateImpl;

  bool get isUserExsit;
  UserModel get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserExitStateImplCopyWith<_$UserExitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCreateUserGoToProfileImplCopyWith<$Res> {
  factory _$$SuccessCreateUserGoToProfileImplCopyWith(
    _$SuccessCreateUserGoToProfileImpl value,
    $Res Function(_$SuccessCreateUserGoToProfileImpl) then,
  ) = __$$SuccessCreateUserGoToProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$SuccessCreateUserGoToProfileImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessCreateUserGoToProfileImpl>
    implements _$$SuccessCreateUserGoToProfileImplCopyWith<$Res> {
  __$$SuccessCreateUserGoToProfileImplCopyWithImpl(
    _$SuccessCreateUserGoToProfileImpl _value,
    $Res Function(_$SuccessCreateUserGoToProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userModel = null}) {
    return _then(
      _$SuccessCreateUserGoToProfileImpl(
        null == userModel
            ? _value.userModel
            : userModel // ignore: cast_nullable_to_non_nullable
                as UserModel,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$SuccessCreateUserGoToProfileImpl
    implements SuccessCreateUserGoToProfile {
  const _$SuccessCreateUserGoToProfileImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'AuthState.successCreateUserGoToProfile(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCreateUserGoToProfileImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCreateUserGoToProfileImplCopyWith<
    _$SuccessCreateUserGoToProfileImpl
  >
  get copyWith => __$$SuccessCreateUserGoToProfileImplCopyWithImpl<
    _$SuccessCreateUserGoToProfileImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return successCreateUserGoToProfile(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return successCreateUserGoToProfile?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successCreateUserGoToProfile != null) {
      return successCreateUserGoToProfile(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return successCreateUserGoToProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return successCreateUserGoToProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successCreateUserGoToProfile != null) {
      return successCreateUserGoToProfile(this);
    }
    return orElse();
  }
}

abstract class SuccessCreateUserGoToProfile implements AuthState {
  const factory SuccessCreateUserGoToProfile(final UserModel userModel) =
      _$SuccessCreateUserGoToProfileImpl;

  UserModel get userModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCreateUserGoToProfileImplCopyWith<
    _$SuccessCreateUserGoToProfileImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessGetUserGoToHomeImplCopyWith<$Res> {
  factory _$$SuccessGetUserGoToHomeImplCopyWith(
    _$SuccessGetUserGoToHomeImpl value,
    $Res Function(_$SuccessGetUserGoToHomeImpl) then,
  ) = __$$SuccessGetUserGoToHomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$SuccessGetUserGoToHomeImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessGetUserGoToHomeImpl>
    implements _$$SuccessGetUserGoToHomeImplCopyWith<$Res> {
  __$$SuccessGetUserGoToHomeImplCopyWithImpl(
    _$SuccessGetUserGoToHomeImpl _value,
    $Res Function(_$SuccessGetUserGoToHomeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userModel = null}) {
    return _then(
      _$SuccessGetUserGoToHomeImpl(
        null == userModel
            ? _value.userModel
            : userModel // ignore: cast_nullable_to_non_nullable
                as UserModel,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$SuccessGetUserGoToHomeImpl implements SuccessGetUserGoToHome {
  const _$SuccessGetUserGoToHomeImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'AuthState.successGetUserGoToHome(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGetUserGoToHomeImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGetUserGoToHomeImplCopyWith<_$SuccessGetUserGoToHomeImpl>
  get copyWith =>
      __$$SuccessGetUserGoToHomeImplCopyWithImpl<_$SuccessGetUserGoToHomeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGetOtp,
    required TResult Function() successGetOtp,
    required TResult Function(String message) errorGetOtp,
    required TResult Function() loadingVerifyOtp,
    required TResult Function(UserModel userModel) successVerifyOtp,
    required TResult Function(String message) errorVerifyOtp,
    required TResult Function(UserModel user) successCreateUser,
    required TResult Function(bool isUserExsit, UserModel user) userExitState,
    required TResult Function(UserModel userModel) successCreateUserGoToProfile,
    required TResult Function(UserModel userModel) successGetUserGoToHome,
  }) {
    return successGetUserGoToHome(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGetOtp,
    TResult? Function()? successGetOtp,
    TResult? Function(String message)? errorGetOtp,
    TResult? Function()? loadingVerifyOtp,
    TResult? Function(UserModel userModel)? successVerifyOtp,
    TResult? Function(String message)? errorVerifyOtp,
    TResult? Function(UserModel user)? successCreateUser,
    TResult? Function(bool isUserExsit, UserModel user)? userExitState,
    TResult? Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult? Function(UserModel userModel)? successGetUserGoToHome,
  }) {
    return successGetUserGoToHome?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGetOtp,
    TResult Function()? successGetOtp,
    TResult Function(String message)? errorGetOtp,
    TResult Function()? loadingVerifyOtp,
    TResult Function(UserModel userModel)? successVerifyOtp,
    TResult Function(String message)? errorVerifyOtp,
    TResult Function(UserModel user)? successCreateUser,
    TResult Function(bool isUserExsit, UserModel user)? userExitState,
    TResult Function(UserModel userModel)? successCreateUserGoToProfile,
    TResult Function(UserModel userModel)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successGetUserGoToHome != null) {
      return successGetUserGoToHome(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGetOtp value) loadingGetOtp,
    required TResult Function(SuccessGetOtp value) successGetOtp,
    required TResult Function(ErrorGetOtp value) errorGetOtp,
    required TResult Function(LoadingVerifyOtp value) loadingVerifyOtp,
    required TResult Function(SuccessVerifyOtp value) successVerifyOtp,
    required TResult Function(ErrorVerifyOtp value) errorVerifyOtp,
    required TResult Function(SuccessCreateUser value) successCreateUser,
    required TResult Function(UserExitState value) userExitState,
    required TResult Function(SuccessCreateUserGoToProfile value)
    successCreateUserGoToProfile,
    required TResult Function(SuccessGetUserGoToHome value)
    successGetUserGoToHome,
  }) {
    return successGetUserGoToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGetOtp value)? loadingGetOtp,
    TResult? Function(SuccessGetOtp value)? successGetOtp,
    TResult? Function(ErrorGetOtp value)? errorGetOtp,
    TResult? Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult? Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult? Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult? Function(SuccessCreateUser value)? successCreateUser,
    TResult? Function(UserExitState value)? userExitState,
    TResult? Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult? Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
  }) {
    return successGetUserGoToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGetOtp value)? loadingGetOtp,
    TResult Function(SuccessGetOtp value)? successGetOtp,
    TResult Function(ErrorGetOtp value)? errorGetOtp,
    TResult Function(LoadingVerifyOtp value)? loadingVerifyOtp,
    TResult Function(SuccessVerifyOtp value)? successVerifyOtp,
    TResult Function(ErrorVerifyOtp value)? errorVerifyOtp,
    TResult Function(SuccessCreateUser value)? successCreateUser,
    TResult Function(UserExitState value)? userExitState,
    TResult Function(SuccessCreateUserGoToProfile value)?
    successCreateUserGoToProfile,
    TResult Function(SuccessGetUserGoToHome value)? successGetUserGoToHome,
    required TResult orElse(),
  }) {
    if (successGetUserGoToHome != null) {
      return successGetUserGoToHome(this);
    }
    return orElse();
  }
}

abstract class SuccessGetUserGoToHome implements AuthState {
  const factory SuccessGetUserGoToHome(final UserModel userModel) =
      _$SuccessGetUserGoToHomeImpl;

  UserModel get userModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessGetUserGoToHomeImplCopyWith<_$SuccessGetUserGoToHomeImpl>
  get copyWith => throw _privateConstructorUsedError;
}
