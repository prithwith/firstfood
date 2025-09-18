// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fastdelivery_model.freezed.dart';
part 'fastdelivery_model.g.dart';

@freezed
abstract class FastDeliveryModel with _$FastDeliveryModel {
  const factory FastDeliveryModel({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subtitle') String? subtitle,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'rating') String? rating,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'badge') String? badge,
  }) = _FastDeliveryModel;

  factory FastDeliveryModel.fromJson(Map<String, dynamic> json) =>
      _$FastDeliveryModelFromJson(json);
}
