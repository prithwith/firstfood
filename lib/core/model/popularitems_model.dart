// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'popularitems_model.freezed.dart';
part 'popularitems_model.g.dart';

@freezed
abstract class PopularitemsModel with _$PopularitemsModel {
  const factory PopularitemsModel({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subtitle') String? subtitle,
  }) = _PopularitemsModel;

  factory PopularitemsModel.fromJson(Map<String, dynamic> json) =>
      _$PopularitemsModelFromJson(json);
}
