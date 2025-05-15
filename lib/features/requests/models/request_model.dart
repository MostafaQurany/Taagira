import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taggira/core/utils/helper/app_formater.dart';

part 'request_model.freezed.dart';
part 'request_model.g.dart';

enum RequestModelState {
  @JsonValue('waiting')
  waiting,

  @JsonValue('booked')
  booked,

  @JsonValue('done')
  done,

  @JsonValue('cancelled')
  cancelled,

  @JsonValue('rejected')
  rejected,

  @JsonValue('all')
  all,
}

@freezed
abstract class RequestModel with _$RequestModel {
  factory RequestModel({
    required String requestId,
    required String carId,
    required String userId,
    required DateTime pickUpDate,
    required DateTime returnDate,
    @TimestampConverter() Timestamp? createdAt,
    @Default(RequestModelState.waiting) RequestModelState requestState,
  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);
}
