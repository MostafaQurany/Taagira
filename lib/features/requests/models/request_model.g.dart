// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestModel _$RequestModelFromJson(Map<String, dynamic> json) =>
    _RequestModel(
      requestId: json['requestId'] as String,
      carId: json['carId'] as String,
      userId: json['userId'] as String,
      pickUpDate: DateTime.parse(json['pickUpDate'] as String),
      returnDate: DateTime.parse(json['returnDate'] as String),
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      requestState:
          $enumDecodeNullable(
            _$RequestModelStateEnumMap,
            json['requestState'],
          ) ??
          RequestModelState.waiting,
    );

Map<String, dynamic> _$RequestModelToJson(_RequestModel instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'carId': instance.carId,
      'userId': instance.userId,
      'pickUpDate': instance.pickUpDate.toIso8601String(),
      'returnDate': instance.returnDate.toIso8601String(),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'requestState': _$RequestModelStateEnumMap[instance.requestState]!,
    };

const _$RequestModelStateEnumMap = {
  RequestModelState.waiting: 'waiting',
  RequestModelState.booked: 'booked',
  RequestModelState.done: 'done',
  RequestModelState.cancelled: 'cancelled',
  RequestModelState.rejected: 'rejected',
  RequestModelState.all: 'all',
};
