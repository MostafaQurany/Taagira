// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllCarsLoading,
    required TResult Function(List<CarModel> cars) getAllCarsSuccess,
    required TResult Function(String error) getAllCarsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllCarsLoading,
    TResult? Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult? Function(String error)? getAllCarsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllCarsLoading,
    TResult Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult Function(String error)? getAllCarsError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllCarsLoading value) getAllCarsLoading,
    required TResult Function(GetAllCarsSuccess value) getAllCarsSuccess,
    required TResult Function(GetAllCarsError value) getAllCarsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult? Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult? Function(GetAllCarsError value)? getAllCarsError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult Function(GetAllCarsError value)? getAllCarsError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarStateCopyWith<$Res> {
  factory $CarStateCopyWith(CarState value, $Res Function(CarState) then) =
      _$CarStateCopyWithImpl<$Res, CarState>;
}

/// @nodoc
class _$CarStateCopyWithImpl<$Res, $Val extends CarState>
    implements $CarStateCopyWith<$Res> {
  _$CarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarState
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
    extends _$CarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CarState.initial()';
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
    required TResult Function() getAllCarsLoading,
    required TResult Function(List<CarModel> cars) getAllCarsSuccess,
    required TResult Function(String error) getAllCarsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllCarsLoading,
    TResult? Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult? Function(String error)? getAllCarsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllCarsLoading,
    TResult Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult Function(String error)? getAllCarsError,
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
    required TResult Function(GetAllCarsLoading value) getAllCarsLoading,
    required TResult Function(GetAllCarsSuccess value) getAllCarsSuccess,
    required TResult Function(GetAllCarsError value) getAllCarsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult? Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult? Function(GetAllCarsError value)? getAllCarsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult Function(GetAllCarsError value)? getAllCarsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CarState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetAllCarsLoadingImplCopyWith<$Res> {
  factory _$$GetAllCarsLoadingImplCopyWith(
    _$GetAllCarsLoadingImpl value,
    $Res Function(_$GetAllCarsLoadingImpl) then,
  ) = __$$GetAllCarsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllCarsLoadingImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$GetAllCarsLoadingImpl>
    implements _$$GetAllCarsLoadingImplCopyWith<$Res> {
  __$$GetAllCarsLoadingImplCopyWithImpl(
    _$GetAllCarsLoadingImpl _value,
    $Res Function(_$GetAllCarsLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllCarsLoadingImpl implements GetAllCarsLoading {
  const _$GetAllCarsLoadingImpl();

  @override
  String toString() {
    return 'CarState.getAllCarsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllCarsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllCarsLoading,
    required TResult Function(List<CarModel> cars) getAllCarsSuccess,
    required TResult Function(String error) getAllCarsError,
  }) {
    return getAllCarsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllCarsLoading,
    TResult? Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult? Function(String error)? getAllCarsError,
  }) {
    return getAllCarsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllCarsLoading,
    TResult Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult Function(String error)? getAllCarsError,
    required TResult orElse(),
  }) {
    if (getAllCarsLoading != null) {
      return getAllCarsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllCarsLoading value) getAllCarsLoading,
    required TResult Function(GetAllCarsSuccess value) getAllCarsSuccess,
    required TResult Function(GetAllCarsError value) getAllCarsError,
  }) {
    return getAllCarsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult? Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult? Function(GetAllCarsError value)? getAllCarsError,
  }) {
    return getAllCarsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult Function(GetAllCarsError value)? getAllCarsError,
    required TResult orElse(),
  }) {
    if (getAllCarsLoading != null) {
      return getAllCarsLoading(this);
    }
    return orElse();
  }
}

abstract class GetAllCarsLoading implements CarState {
  const factory GetAllCarsLoading() = _$GetAllCarsLoadingImpl;
}

/// @nodoc
abstract class _$$GetAllCarsSuccessImplCopyWith<$Res> {
  factory _$$GetAllCarsSuccessImplCopyWith(
    _$GetAllCarsSuccessImpl value,
    $Res Function(_$GetAllCarsSuccessImpl) then,
  ) = __$$GetAllCarsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CarModel> cars});
}

/// @nodoc
class __$$GetAllCarsSuccessImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$GetAllCarsSuccessImpl>
    implements _$$GetAllCarsSuccessImplCopyWith<$Res> {
  __$$GetAllCarsSuccessImplCopyWithImpl(
    _$GetAllCarsSuccessImpl _value,
    $Res Function(_$GetAllCarsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cars = null}) {
    return _then(
      _$GetAllCarsSuccessImpl(
        null == cars
            ? _value._cars
            : cars // ignore: cast_nullable_to_non_nullable
                as List<CarModel>,
      ),
    );
  }
}

/// @nodoc

class _$GetAllCarsSuccessImpl implements GetAllCarsSuccess {
  const _$GetAllCarsSuccessImpl(final List<CarModel> cars) : _cars = cars;

  final List<CarModel> _cars;
  @override
  List<CarModel> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarState.getAllCarsSuccess(cars: $cars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCarsSuccessImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCarsSuccessImplCopyWith<_$GetAllCarsSuccessImpl> get copyWith =>
      __$$GetAllCarsSuccessImplCopyWithImpl<_$GetAllCarsSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllCarsLoading,
    required TResult Function(List<CarModel> cars) getAllCarsSuccess,
    required TResult Function(String error) getAllCarsError,
  }) {
    return getAllCarsSuccess(cars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllCarsLoading,
    TResult? Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult? Function(String error)? getAllCarsError,
  }) {
    return getAllCarsSuccess?.call(cars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllCarsLoading,
    TResult Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult Function(String error)? getAllCarsError,
    required TResult orElse(),
  }) {
    if (getAllCarsSuccess != null) {
      return getAllCarsSuccess(cars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllCarsLoading value) getAllCarsLoading,
    required TResult Function(GetAllCarsSuccess value) getAllCarsSuccess,
    required TResult Function(GetAllCarsError value) getAllCarsError,
  }) {
    return getAllCarsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult? Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult? Function(GetAllCarsError value)? getAllCarsError,
  }) {
    return getAllCarsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult Function(GetAllCarsError value)? getAllCarsError,
    required TResult orElse(),
  }) {
    if (getAllCarsSuccess != null) {
      return getAllCarsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAllCarsSuccess implements CarState {
  const factory GetAllCarsSuccess(final List<CarModel> cars) =
      _$GetAllCarsSuccessImpl;

  List<CarModel> get cars;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllCarsSuccessImplCopyWith<_$GetAllCarsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllCarsErrorImplCopyWith<$Res> {
  factory _$$GetAllCarsErrorImplCopyWith(
    _$GetAllCarsErrorImpl value,
    $Res Function(_$GetAllCarsErrorImpl) then,
  ) = __$$GetAllCarsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetAllCarsErrorImplCopyWithImpl<$Res>
    extends _$CarStateCopyWithImpl<$Res, _$GetAllCarsErrorImpl>
    implements _$$GetAllCarsErrorImplCopyWith<$Res> {
  __$$GetAllCarsErrorImplCopyWithImpl(
    _$GetAllCarsErrorImpl _value,
    $Res Function(_$GetAllCarsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$GetAllCarsErrorImpl(
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$GetAllCarsErrorImpl implements GetAllCarsError {
  const _$GetAllCarsErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CarState.getAllCarsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCarsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCarsErrorImplCopyWith<_$GetAllCarsErrorImpl> get copyWith =>
      __$$GetAllCarsErrorImplCopyWithImpl<_$GetAllCarsErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getAllCarsLoading,
    required TResult Function(List<CarModel> cars) getAllCarsSuccess,
    required TResult Function(String error) getAllCarsError,
  }) {
    return getAllCarsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getAllCarsLoading,
    TResult? Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult? Function(String error)? getAllCarsError,
  }) {
    return getAllCarsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getAllCarsLoading,
    TResult Function(List<CarModel> cars)? getAllCarsSuccess,
    TResult Function(String error)? getAllCarsError,
    required TResult orElse(),
  }) {
    if (getAllCarsError != null) {
      return getAllCarsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetAllCarsLoading value) getAllCarsLoading,
    required TResult Function(GetAllCarsSuccess value) getAllCarsSuccess,
    required TResult Function(GetAllCarsError value) getAllCarsError,
  }) {
    return getAllCarsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult? Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult? Function(GetAllCarsError value)? getAllCarsError,
  }) {
    return getAllCarsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetAllCarsLoading value)? getAllCarsLoading,
    TResult Function(GetAllCarsSuccess value)? getAllCarsSuccess,
    TResult Function(GetAllCarsError value)? getAllCarsError,
    required TResult orElse(),
  }) {
    if (getAllCarsError != null) {
      return getAllCarsError(this);
    }
    return orElse();
  }
}

abstract class GetAllCarsError implements CarState {
  const factory GetAllCarsError(final String error) = _$GetAllCarsErrorImpl;

  String get error;

  /// Create a copy of CarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllCarsErrorImplCopyWith<_$GetAllCarsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
