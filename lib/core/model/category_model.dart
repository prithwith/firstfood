// ignore_for_file: invalid_annotation_target, unnecessary_null_comparison

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subtitle') String? subtitle,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
