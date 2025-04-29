// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_car_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddCarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addCarloading,
    required TResult Function(String message) addCarSuccess,
    required TResult Function(String message) addCarError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addCarloading,
    TResult? Function(String message)? addCarSuccess,
    TResult? Function(String message)? addCarError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addCarloading,
    TResult Function(String message)? addCarSuccess,
    TResult Function(String message)? addCarError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCarLoading value) addCarloading,
    required TResult Function(_AddCarSuccess value) addCarSuccess,
    required TResult Function(_AddCarError value) addCarError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCarLoading value)? addCarloading,
    TResult? Function(_AddCarSuccess value)? addCarSuccess,
    TResult? Function(_AddCarError value)? addCarError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCarLoading value)? addCarloading,
    TResult Function(_AddCarSuccess value)? addCarSuccess,
    TResult Function(_AddCarError value)? addCarError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCarStateCopyWith<$Res> {
  factory $AddCarStateCopyWith(
    AddCarState value,
    $Res Function(AddCarState) then,
  ) = _$AddCarStateCopyWithImpl<$Res, AddCarState>;
}

/// @nodoc
class _$AddCarStateCopyWithImpl<$Res, $Val extends AddCarState>
    implements $AddCarStateCopyWith<$Res> {
  _$AddCarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCarState
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
    extends _$AddCarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddCarState.initial()';
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
    required TResult Function() addCarloading,
    required TResult Function(String message) addCarSuccess,
    required TResult Function(String message) addCarError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addCarloading,
    TResult? Function(String message)? addCarSuccess,
    TResult? Function(String message)? addCarError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addCarloading,
    TResult Function(String message)? addCarSuccess,
    TResult Function(String message)? addCarError,
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
    required TResult Function(_AddCarLoading value) addCarloading,
    required TResult Function(_AddCarSuccess value) addCarSuccess,
    required TResult Function(_AddCarError value) addCarError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCarLoading value)? addCarloading,
    TResult? Function(_AddCarSuccess value)? addCarSuccess,
    TResult? Function(_AddCarError value)? addCarError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCarLoading value)? addCarloading,
    TResult Function(_AddCarSuccess value)? addCarSuccess,
    TResult Function(_AddCarError value)? addCarError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddCarState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AddCarLoadingImplCopyWith<$Res> {
  factory _$$AddCarLoadingImplCopyWith(
    _$AddCarLoadingImpl value,
    $Res Function(_$AddCarLoadingImpl) then,
  ) = __$$AddCarLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCarLoadingImplCopyWithImpl<$Res>
    extends _$AddCarStateCopyWithImpl<$Res, _$AddCarLoadingImpl>
    implements _$$AddCarLoadingImplCopyWith<$Res> {
  __$$AddCarLoadingImplCopyWithImpl(
    _$AddCarLoadingImpl _value,
    $Res Function(_$AddCarLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddCarLoadingImpl implements _AddCarLoading {
  const _$AddCarLoadingImpl();

  @override
  String toString() {
    return 'AddCarState.addCarloading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddCarLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addCarloading,
    required TResult Function(String message) addCarSuccess,
    required TResult Function(String message) addCarError,
  }) {
    return addCarloading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addCarloading,
    TResult? Function(String message)? addCarSuccess,
    TResult? Function(String message)? addCarError,
  }) {
    return addCarloading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addCarloading,
    TResult Function(String message)? addCarSuccess,
    TResult Function(String message)? addCarError,
    required TResult orElse(),
  }) {
    if (addCarloading != null) {
      return addCarloading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCarLoading value) addCarloading,
    required TResult Function(_AddCarSuccess value) addCarSuccess,
    required TResult Function(_AddCarError value) addCarError,
  }) {
    return addCarloading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCarLoading value)? addCarloading,
    TResult? Function(_AddCarSuccess value)? addCarSuccess,
    TResult? Function(_AddCarError value)? addCarError,
  }) {
    return addCarloading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCarLoading value)? addCarloading,
    TResult Function(_AddCarSuccess value)? addCarSuccess,
    TResult Function(_AddCarError value)? addCarError,
    required TResult orElse(),
  }) {
    if (addCarloading != null) {
      return addCarloading(this);
    }
    return orElse();
  }
}

abstract class _AddCarLoading implements AddCarState {
  const factory _AddCarLoading() = _$AddCarLoadingImpl;
}

/// @nodoc
abstract class _$$AddCarSuccessImplCopyWith<$Res> {
  factory _$$AddCarSuccessImplCopyWith(
    _$AddCarSuccessImpl value,
    $Res Function(_$AddCarSuccessImpl) then,
  ) = __$$AddCarSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddCarSuccessImplCopyWithImpl<$Res>
    extends _$AddCarStateCopyWithImpl<$Res, _$AddCarSuccessImpl>
    implements _$$AddCarSuccessImplCopyWith<$Res> {
  __$$AddCarSuccessImplCopyWithImpl(
    _$AddCarSuccessImpl _value,
    $Res Function(_$AddCarSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$AddCarSuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AddCarSuccessImpl implements _AddCarSuccess {
  const _$AddCarSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddCarState.addCarSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCarSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCarSuccessImplCopyWith<_$AddCarSuccessImpl> get copyWith =>
      __$$AddCarSuccessImplCopyWithImpl<_$AddCarSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addCarloading,
    required TResult Function(String message) addCarSuccess,
    required TResult Function(String message) addCarError,
  }) {
    return addCarSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addCarloading,
    TResult? Function(String message)? addCarSuccess,
    TResult? Function(String message)? addCarError,
  }) {
    return addCarSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addCarloading,
    TResult Function(String message)? addCarSuccess,
    TResult Function(String message)? addCarError,
    required TResult orElse(),
  }) {
    if (addCarSuccess != null) {
      return addCarSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCarLoading value) addCarloading,
    required TResult Function(_AddCarSuccess value) addCarSuccess,
    required TResult Function(_AddCarError value) addCarError,
  }) {
    return addCarSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCarLoading value)? addCarloading,
    TResult? Function(_AddCarSuccess value)? addCarSuccess,
    TResult? Function(_AddCarError value)? addCarError,
  }) {
    return addCarSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCarLoading value)? addCarloading,
    TResult Function(_AddCarSuccess value)? addCarSuccess,
    TResult Function(_AddCarError value)? addCarError,
    required TResult orElse(),
  }) {
    if (addCarSuccess != null) {
      return addCarSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddCarSuccess implements AddCarState {
  const factory _AddCarSuccess(final String message) = _$AddCarSuccessImpl;

  String get message;

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCarSuccessImplCopyWith<_$AddCarSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCarErrorImplCopyWith<$Res> {
  factory _$$AddCarErrorImplCopyWith(
    _$AddCarErrorImpl value,
    $Res Function(_$AddCarErrorImpl) then,
  ) = __$$AddCarErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddCarErrorImplCopyWithImpl<$Res>
    extends _$AddCarStateCopyWithImpl<$Res, _$AddCarErrorImpl>
    implements _$$AddCarErrorImplCopyWith<$Res> {
  __$$AddCarErrorImplCopyWithImpl(
    _$AddCarErrorImpl _value,
    $Res Function(_$AddCarErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$AddCarErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AddCarErrorImpl implements _AddCarError {
  const _$AddCarErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AddCarState.addCarError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCarErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCarErrorImplCopyWith<_$AddCarErrorImpl> get copyWith =>
      __$$AddCarErrorImplCopyWithImpl<_$AddCarErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() addCarloading,
    required TResult Function(String message) addCarSuccess,
    required TResult Function(String message) addCarError,
  }) {
    return addCarError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? addCarloading,
    TResult? Function(String message)? addCarSuccess,
    TResult? Function(String message)? addCarError,
  }) {
    return addCarError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? addCarloading,
    TResult Function(String message)? addCarSuccess,
    TResult Function(String message)? addCarError,
    required TResult orElse(),
  }) {
    if (addCarError != null) {
      return addCarError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AddCarLoading value) addCarloading,
    required TResult Function(_AddCarSuccess value) addCarSuccess,
    required TResult Function(_AddCarError value) addCarError,
  }) {
    return addCarError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_AddCarLoading value)? addCarloading,
    TResult? Function(_AddCarSuccess value)? addCarSuccess,
    TResult? Function(_AddCarError value)? addCarError,
  }) {
    return addCarError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AddCarLoading value)? addCarloading,
    TResult Function(_AddCarSuccess value)? addCarSuccess,
    TResult Function(_AddCarError value)? addCarError,
    required TResult orElse(),
  }) {
    if (addCarError != null) {
      return addCarError(this);
    }
    return orElse();
  }
}

abstract class _AddCarError implements AddCarState {
  const factory _AddCarError(final String message) = _$AddCarErrorImpl;

  String get message;

  /// Create a copy of AddCarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCarErrorImplCopyWith<_$AddCarErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
