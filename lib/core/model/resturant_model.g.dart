// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resturant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResturantModelImpl _$$ResturantModelImplFromJson(Map<String, dynamic> json) =>
    _$ResturantModelImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      subtitle: json['subtitle'] as String?,
      deliveryCharge: json['deliveryCharge'] as String?,
      price: json['price'] as String?,
      time: json['time'] as String?,
      rating: json['rating'] as String?,
      allDishes: (json['allDishes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResturantModelImplToJson(
        _$ResturantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'subtitle': instance.subtitle,
      'deliveryCharge': instance.deliveryCharge,
      'price': instance.price,
      'time': instance.time,
      'rating': instance.rating,
      'allDishes': instance.allDishes,
    };
