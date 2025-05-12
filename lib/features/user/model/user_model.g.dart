// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      phone: json['phone'] as String,
      urlPhoto: json['urlPhoto'] as String?,
      nationalId: json['nationalId'] as String?,
      birthday:
          json['birthday'] == null
              ? null
              : DateTime.parse(json['birthday'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'urlPhoto': instance.urlPhoto,
      'nationalId': instance.nationalId,
      'birthday': instance.birthday?.toIso8601String(),
    };
