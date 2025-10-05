// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      profileImageUrl: json['profile_image_url'] as String?,
      defaultAddressLine1: json['default_address_line1'] as String?,
      defaultAddressLine2: json['default_address_line2'] as String?,
      defaultAddressCity: json['default_address_city'] as String?,
      defaultAddressZip: json['default_address_zip'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'profile_image_url': instance.profileImageUrl,
      'default_address_line1': instance.defaultAddressLine1,
      'default_address_line2': instance.defaultAddressLine2,
      'default_address_city': instance.defaultAddressCity,
      'default_address_zip': instance.defaultAddressZip,
    };
