// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderitem_model.freezed.dart';
part 'orderitem_model.g.dart';

@freezed
abstract class OrderitemModel with _$OrderitemModel {
  const factory OrderitemModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'extras') String? extras,
    @JsonKey(name: 'quantity') String? quantity,
  }) = _OrderitemModel;

  factory OrderitemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderitemModelFromJson(json);
}
