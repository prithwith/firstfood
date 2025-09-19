// ignore_for_file: invalid_annotation_target

import 'package:fastfood/core/model/recommendation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resturant_model.freezed.dart';
part 'resturant_model.g.dart';

@freezed
abstract class ResturantModel with _$ResturantModel {
  const factory ResturantModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'subtitle') String? subtitle,
    @JsonKey(name: 'deliveryCharge') String? deliveryCharge,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'rating') String? rating,
    @Default([])
    @JsonKey(name: 'allDishes')
    List<RecommendationModel> allDishes,
  }) = _ResturantModel;

  factory ResturantModel.fromJson(Map<String, dynamic> json) =>
      _$ResturantModelFromJson(json);
}
