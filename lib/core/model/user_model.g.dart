// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      phoneCode: json['phone_code'] as String?,
      phone: json['phone'] as String?,
      telegramId: json['telegram_id'] as String?,
      telegramFirstName: json['telegram_first_name'] as String?,
      telegramLastName: json['telegram_last_name'] as String?,
      telegramUserName: json['telegram_user_name'] as String?,
      email: json['email'] as String?,
      profileImage: json['profile_image'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      bio: json['bio'] as String?,
      isPhoneVerified: json['isPhoneVerified'] as bool?,
      isClosed: json['isClosed'] as bool?,
      country: json['country'] as String?,
      businessName: json['business_name'] as String?,
      businessDetails: json['business_details'] as String?,
      businessLocation: json['business_location'] as String?,
      isDeliveryProvided: json['isDeliveryProvided'] as bool?,
      isPickupProvided: json['isPickupProvided'] as bool?,
      registerType: json['registerType'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      deliveryFee: (json['delivery_fee'] as num?)?.toInt(),
      maximumDeliveryRange: (json['maximum_delivery_range'] as num?)?.toInt(),
      freeDeliveryRange: (json['free_delivery_range'] as num?)?.toInt(),
      avgPreparationTime: (json['avg_preparation_time'] as num?)?.toInt(),
      restaurantOpeningTime: (json['restaurant_opening_time'] as num?)?.toInt(),
      restaurantClosingTime: (json['restaurant_closing_time'] as num?)?.toInt(),
      isSubscribed: json['isSubscribed'] as bool?,
      stripeCustomerId: json['stripeCustomerId'] as String?,
      stripeBankAccountId: json['stripeBankAccountId'] as String?,
      signupOtp: json['signup_otp'] as String?,
      signupOtpExpireOn: json['signup_otp_expire_on'] as String?,
      deviceType: json['deviceType'] as String?,
      deviceToken: json['deviceToken'] as String?,
      status: json['status'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      socialAccount: json['socialAccount'] as List<dynamic>?,
      createdAt: json['createdAt'] as String?,
      isChatRoomCreated: json['isChatRoomCreated'] as bool?,
      isTelegramLinked: json['isTelegramLinked'] as bool?,
      acceptsPayment: json['accepts_payment'] as String?,
      zelle: json['zelle_number'] as String?,
      isPayoutsEnabled: json['isPayoutsEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'phone_code': instance.phoneCode,
      'phone': instance.phone,
      'telegram_id': instance.telegramId,
      'telegram_first_name': instance.telegramFirstName,
      'telegram_last_name': instance.telegramLastName,
      'telegram_user_name': instance.telegramUserName,
      'email': instance.email,
      'profile_image': instance.profileImage,
      'date_of_birth': instance.dateOfBirth,
      'bio': instance.bio,
      'isPhoneVerified': instance.isPhoneVerified,
      'isClosed': instance.isClosed,
      'country': instance.country,
      'business_name': instance.businessName,
      'business_details': instance.businessDetails,
      'business_location': instance.businessLocation,
      'isDeliveryProvided': instance.isDeliveryProvided,
      'isPickupProvided': instance.isPickupProvided,
      'registerType': instance.registerType,
      'location': instance.location,
      'delivery_fee': instance.deliveryFee,
      'maximum_delivery_range': instance.maximumDeliveryRange,
      'free_delivery_range': instance.freeDeliveryRange,
      'avg_preparation_time': instance.avgPreparationTime,
      'restaurant_opening_time': instance.restaurantOpeningTime,
      'restaurant_closing_time': instance.restaurantClosingTime,
      'isSubscribed': instance.isSubscribed,
      'stripeCustomerId': instance.stripeCustomerId,
      'stripeBankAccountId': instance.stripeBankAccountId,
      'signup_otp': instance.signupOtp,
      'signup_otp_expire_on': instance.signupOtpExpireOn,
      'deviceType': instance.deviceType,
      'deviceToken': instance.deviceToken,
      'status': instance.status,
      'isDeleted': instance.isDeleted,
      'socialAccount': instance.socialAccount,
      'createdAt': instance.createdAt,
      'isChatRoomCreated': instance.isChatRoomCreated,
      'isTelegramLinked': instance.isTelegramLinked,
      'accepts_payment': instance.acceptsPayment,
      'zelle_number': instance.zelle,
      'isPayoutsEnabled': instance.isPayoutsEnabled,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
