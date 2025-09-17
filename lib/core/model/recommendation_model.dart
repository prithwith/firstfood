// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendation_model.freezed.dart';
part 'recommendation_model.g.dart';

@freezed
abstract class RecommendationModel with _$RecommendationModel {
  const factory RecommendationModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'title') String? title,
  }) = _RecommendationModel;

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendationModelFromJson(json);
}
