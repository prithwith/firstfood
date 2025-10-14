// ignore_for_file: invalid_annotation_target, unnecessary_null_comparison

import 'package:freezed_annotation/freezed_annotation.dart';

part 'addonitems_model.freezed.dart';
part 'addonitems_model.g.dart';

@freezed
class AddOnItemsModel with _$AddOnItemsModel {
  const factory AddOnItemsModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
  }) = _AddOnItemsModel;

  factory AddOnItemsModel.fromJson(Map<String, dynamic> json) =>
      _$AddOnItemsModelFromJson(json);
}
