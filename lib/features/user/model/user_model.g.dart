// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String?,
  phone: json['phone'] as String,
  urlPhoto: json['urlPhoto'] as String?,
  nationalId: json['nationalId'] as String?,
  imageUrl: json['imageUrl'] as String?,
  birthday:
      json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'urlPhoto': instance.urlPhoto,
      'nationalId': instance.nationalId,
      'imageUrl': instance.imageUrl,
      'birthday': instance.birthday?.toIso8601String(),
    };
