// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'textai_model.freezed.dart';
part 'textai_model.g.dart';

@freezed
abstract class TextaiModel with _$TextaiModel {
  const factory TextaiModel({
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'text') String? text,
  }) = _TextaiModel;

  factory TextaiModel.fromJson(Map<String, dynamic> json) =>
      _$TextaiModelFromJson(json);
}
