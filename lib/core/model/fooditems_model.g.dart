// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fooditems_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FooditemsModelImpl _$$FooditemsModelImplFromJson(Map<String, dynamic> json) =>
    _$FooditemsModelImpl(
      id: json['id'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      price: json['price'] as String?,
      time: json['time'] as String?,
      rating: json['rating'] as String?,
      badge: json['badge'] as String?,
      places: json['places'] as String?,
      restaurant: json['restaurant'] as String?,
      priceLevel: json['priceLevel'] as String?,
      isLiked: json['isLiked'] as bool?,
    );

Map<String, dynamic> _$$FooditemsModelImplToJson(
        _$FooditemsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'price': instance.price,
      'time': instance.time,
      'rating': instance.rating,
      'badge': instance.badge,
      'places': instance.places,
      'restaurant': instance.restaurant,
      'priceLevel': instance.priceLevel,
      'isLiked': instance.isLiked,
    };
