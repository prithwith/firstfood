// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'textimageai_model.freezed.dart';
part 'textimageai_model.g.dart';

@freezed
abstract class TextimageaiModel with _$TextimageaiModel {
  const factory TextimageaiModel({
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'image') String? image,
  }) = _TextimageaiModel;

  factory TextimageaiModel.fromJson(Map<String, dynamic> json) =>
      _$TextimageaiModelFromJson(json);
}
