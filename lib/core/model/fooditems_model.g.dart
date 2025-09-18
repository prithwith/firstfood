// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fooditems_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FooditemsModelImpl _$$FooditemsModelImplFromJson(Map<String, dynamic> json) =>
    _$FooditemsModelImpl(
      image: json['image'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      restaurant: json['restaurant'] as String?,
      time: json['time'] as String?,
      rating: json['rating'] as String?,
      priceLevel: json['priceLevel'] as String?,
    );

Map<String, dynamic> _$$FooditemsModelImplToJson(
        _$FooditemsModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'restaurant': instance.restaurant,
      'time': instance.time,
      'rating': instance.rating,
      'priceLevel': instance.priceLevel,
    };
