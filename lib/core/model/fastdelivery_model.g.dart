// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fastdelivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FastDeliveryModelImpl _$$FastDeliveryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FastDeliveryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      price: json['price'] as String?,
      time: json['time'] as String?,
      rating: json['rating'] as String?,
      image: json['image'] as String?,
      badge: json['badge'] as String?,
    );

Map<String, dynamic> _$$FastDeliveryModelImplToJson(
        _$FastDeliveryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'price': instance.price,
      'time': instance.time,
      'rating': instance.rating,
      'image': instance.image,
      'badge': instance.badge,
    };
