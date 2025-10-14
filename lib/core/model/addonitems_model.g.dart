// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addonitems_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddOnItemsModelImpl _$$AddOnItemsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddOnItemsModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$AddOnItemsModelImplToJson(
        _$AddOnItemsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
    };
