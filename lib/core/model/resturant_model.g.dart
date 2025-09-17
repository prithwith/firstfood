// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resturant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResturantModelImpl _$$ResturantModelImplFromJson(Map<String, dynamic> json) =>
    _$ResturantModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      allDishes: (json['allDishes'] as List<dynamic>?)
              ?.map((e) =>
                  RecommendationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ResturantModelImplToJson(
        _$ResturantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'allDishes': instance.allDishes,
    };
