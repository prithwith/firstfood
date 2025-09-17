// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'phone_code') String? phoneCode,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'telegram_id') String? telegramId,
    @JsonKey(name: 'telegram_first_name') String? telegramFirstName,
    @JsonKey(name: 'telegram_last_name') String? telegramLastName,
    @JsonKey(name: 'telegram_user_name') String? telegramUserName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'profile_image') String? profileImage,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'isPhoneVerified') bool? isPhoneVerified,
    @JsonKey(name: 'isClosed') bool? isClosed,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'business_name') String? businessName,
    @JsonKey(name: 'business_details') String? businessDetails,
    @JsonKey(name: 'business_location') String? businessLocation,
    @JsonKey(name: 'isDeliveryProvided') bool? isDeliveryProvided,
    @JsonKey(name: 'isPickupProvided') bool? isPickupProvided,
    @JsonKey(name: 'registerType') String? registerType,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'delivery_fee') int? deliveryFee,
    @JsonKey(name: 'maximum_delivery_range') int? maximumDeliveryRange,
    @JsonKey(name: 'free_delivery_range') int? freeDeliveryRange,
    @JsonKey(name: 'avg_preparation_time') int? avgPreparationTime,
    @JsonKey(name: 'restaurant_opening_time') int? restaurantOpeningTime,
    @JsonKey(name: 'restaurant_closing_time') int? restaurantClosingTime,
    @JsonKey(name: 'isSubscribed') bool? isSubscribed,
    @JsonKey(name: 'stripeCustomerId') String? stripeCustomerId,
    @JsonKey(name: 'stripeBankAccountId') String? stripeBankAccountId,
    @JsonKey(name: 'signup_otp') String? signupOtp,
    @JsonKey(name: 'signup_otp_expire_on') String? signupOtpExpireOn,
    @JsonKey(name: 'deviceType') String? deviceType,
    @JsonKey(name: 'deviceToken') String? deviceToken,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'socialAccount') List<dynamic>? socialAccount,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'isChatRoomCreated') bool? isChatRoomCreated,
    @JsonKey(name: 'isTelegramLinked') bool? isTelegramLinked,
    @JsonKey(name: 'accepts_payment') String? acceptsPayment,
    @JsonKey(name: 'zelle_number') String? zelle,
    @Default(false) @JsonKey(name: 'isPayoutsEnabled') bool isPayoutsEnabled,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'coordinates') List<double>? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
