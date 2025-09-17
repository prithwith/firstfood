// ignore_for_file: invalid_annotation_target, unnecessary_null_comparison

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_users_model.freezed.dart';
part 'chat_users_model.g.dart';

@freezed
class ChatusersModel with _$ChatusersModel {
  const factory ChatusersModel({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'createdAt') String? createdAt,
  }) = _ChatusersModel;

  factory ChatusersModel.fromJson(Map<String, dynamic> json) =>
      _$ChatusersModelFromJson(json);
}
