// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'default_address_line1') String? defaultAddressLine1,
    @JsonKey(name: 'default_address_line2') String? defaultAddressLine2,
    @JsonKey(name: 'default_address_city') String? defaultAddressCity,
    @JsonKey(name: 'default_address_zip') String? defaultAddressZip,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
