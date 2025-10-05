// ignore_for_file: invalid_annotation_target, unnecessary_null_comparison

import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'number') String? number,
    @JsonKey(name: 'alternativeNumber') String? alternativeNumber,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'pincode') String? pincode,
    @JsonKey(name: 'landmark') String? landmark,
    @Default(false) @JsonKey(name: 'isPrimary') bool isPrimary,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
