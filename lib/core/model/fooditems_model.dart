// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fooditems_model.freezed.dart';
part 'fooditems_model.g.dart';

@freezed
abstract class FooditemsModel with _$FooditemsModel {
  const factory FooditemsModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subtitle') String? subtitle,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'rating') String? rating,
    @JsonKey(name: 'badge') String? badge,
    @JsonKey(name: 'places') String? places,
    @JsonKey(name: 'restaurant') String? restaurant,
    @JsonKey(name: 'priceLevel') String? priceLevel,
    @JsonKey(name: 'isLiked') bool? isLiked,
  }) = _FooditemsModel;

  factory FooditemsModel.fromJson(Map<String, dynamic> json) =>
      _$FooditemsModelFromJson(json);
}
