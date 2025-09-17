// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderitem_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderitemModelImpl _$$OrderitemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderitemModelImpl(
      id: json['id'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      extras: json['extras'] as String?,
      quantity: json['quantity'] as String?,
    );

Map<String, dynamic> _$$OrderitemModelImplToJson(
        _$OrderitemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'image': instance.image,
      'title': instance.title,
      'extras': instance.extras,
      'quantity': instance.quantity,
    };
