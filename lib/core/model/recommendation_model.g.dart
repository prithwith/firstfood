// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendationModelImpl _$$RecommendationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecommendationModelImpl(
      id: json['id'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$RecommendationModelImplToJson(
        _$RecommendationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'image': instance.image,
      'title': instance.title,
    };
