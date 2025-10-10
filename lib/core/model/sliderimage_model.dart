// ignore_for_file: invalid_annotation_target, unnecessary_null_comparison

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sliderimage_model.freezed.dart';
part 'sliderimage_model.g.dart';

@freezed
class SliderImageModel with _$SliderImageModel {
  const factory SliderImageModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'image') String? image,
  }) = _SliderImageModel;

  factory SliderImageModel.fromJson(Map<String, dynamic> json) =>
      _$SliderImageModelFromJson(json);
}
