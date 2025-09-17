// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatusersModelImpl _$$ChatusersModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatusersModelImpl(
      userId: json['userId'] as String?,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$ChatusersModelImplToJson(
        _$ChatusersModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'email': instance.email,
      'createdAt': instance.createdAt,
    };
