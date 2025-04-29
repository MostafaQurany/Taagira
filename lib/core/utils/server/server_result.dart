import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_result.freezed.dart';

@freezed
class ServerResult<T> with _$ServerResult<T> {
  const factory ServerResult.success(T data) = ServerSuccess<T>;
  const factory ServerResult.error(String message) = ServerError;
}
