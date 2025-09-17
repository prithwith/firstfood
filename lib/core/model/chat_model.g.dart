// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      senderId: json['senderId'] as String?,
      reciverId: json['reciverId'] as String?,
      messages: json['message'] as String?,
      dateTime: const TimestampConverter().fromJson(json['dateTime']),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'reciverId': instance.reciverId,
      'message': instance.messages,
      'dateTime': const TimestampConverter().toJson(instance.dateTime),
    };
