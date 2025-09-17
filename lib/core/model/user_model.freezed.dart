// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_code')
  String? get phoneCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'telegram_id')
  String? get telegramId => throw _privateConstructorUsedError;
  @JsonKey(name: 'telegram_first_name')
  String? get telegramFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'telegram_last_name')
  String? get telegramLastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'telegram_user_name')
  String? get telegramUserName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPhoneVerified')
  bool? get isPhoneVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'isClosed')
  bool? get isClosed => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_name')
  String? get businessName => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_details')
  String? get businessDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_location')
  String? get businessLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeliveryProvided')
  bool? get isDeliveryProvided => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPickupProvided')
  bool? get isPickupProvided => throw _privateConstructorUsedError;
  @JsonKey(name: 'registerType')
  String? get registerType => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_fee')
  int? get deliveryFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'maximum_delivery_range')
  int? get maximumDeliveryRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'free_delivery_range')
  int? get freeDeliveryRange => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_preparation_time')
  int? get avgPreparationTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_opening_time')
  int? get restaurantOpeningTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant_closing_time')
  int? get restaurantClosingTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSubscribed')
  bool? get isSubscribed => throw _privateConstructorUsedError;
  @JsonKey(name: 'stripeCustomerId')
  String? get stripeCustomerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stripeBankAccountId')
  String? get stripeBankAccountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'signup_otp')
  String? get signupOtp => throw _privateConstructorUsedError;
  @JsonKey(name: 'signup_otp_expire_on')
  String? get signupOtpExpireOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceType')
  String? get deviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceToken')
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted')
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'socialAccount')
  List<dynamic>? get socialAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'isChatRoomCreated')
  bool? get isChatRoomCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'isTelegramLinked')
  bool? get isTelegramLinked => throw _privateConstructorUsedError;
  @JsonKey(name: 'accepts_payment')
  String? get acceptsPayment => throw _privateConstructorUsedError;
  @JsonKey(name: 'zelle_number')
  String? get zelle => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPayoutsEnabled')
  bool get isPayoutsEnabled => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      @JsonKey(name: 'isPayoutsEnabled') bool isPayoutsEnabled});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? phoneCode = freezed,
    Object? phone = freezed,
    Object? telegramId = freezed,
    Object? telegramFirstName = freezed,
    Object? telegramLastName = freezed,
    Object? telegramUserName = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
    Object? dateOfBirth = freezed,
    Object? bio = freezed,
    Object? isPhoneVerified = freezed,
    Object? isClosed = freezed,
    Object? country = freezed,
    Object? businessName = freezed,
    Object? businessDetails = freezed,
    Object? businessLocation = freezed,
    Object? isDeliveryProvided = freezed,
    Object? isPickupProvided = freezed,
    Object? registerType = freezed,
    Object? location = freezed,
    Object? deliveryFee = freezed,
    Object? maximumDeliveryRange = freezed,
    Object? freeDeliveryRange = freezed,
    Object? avgPreparationTime = freezed,
    Object? restaurantOpeningTime = freezed,
    Object? restaurantClosingTime = freezed,
    Object? isSubscribed = freezed,
    Object? stripeCustomerId = freezed,
    Object? stripeBankAccountId = freezed,
    Object? signupOtp = freezed,
    Object? signupOtpExpireOn = freezed,
    Object? deviceType = freezed,
    Object? deviceToken = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? socialAccount = freezed,
    Object? createdAt = freezed,
    Object? isChatRoomCreated = freezed,
    Object? isTelegramLinked = freezed,
    Object? acceptsPayment = freezed,
    Object? zelle = freezed,
    Object? isPayoutsEnabled = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: freezed == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramId: freezed == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramFirstName: freezed == telegramFirstName
          ? _value.telegramFirstName
          : telegramFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramLastName: freezed == telegramLastName
          ? _value.telegramLastName
          : telegramLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramUserName: freezed == telegramUserName
          ? _value.telegramUserName
          : telegramUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessDetails: freezed == businessDetails
          ? _value.businessDetails
          : businessDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLocation: freezed == businessLocation
          ? _value.businessLocation
          : businessLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeliveryProvided: freezed == isDeliveryProvided
          ? _value.isDeliveryProvided
          : isDeliveryProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPickupProvided: freezed == isPickupProvided
          ? _value.isPickupProvided
          : isPickupProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      registerType: freezed == registerType
          ? _value.registerType
          : registerType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      deliveryFee: freezed == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumDeliveryRange: freezed == maximumDeliveryRange
          ? _value.maximumDeliveryRange
          : maximumDeliveryRange // ignore: cast_nullable_to_non_nullable
              as int?,
      freeDeliveryRange: freezed == freeDeliveryRange
          ? _value.freeDeliveryRange
          : freeDeliveryRange // ignore: cast_nullable_to_non_nullable
              as int?,
      avgPreparationTime: freezed == avgPreparationTime
          ? _value.avgPreparationTime
          : avgPreparationTime // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantOpeningTime: freezed == restaurantOpeningTime
          ? _value.restaurantOpeningTime
          : restaurantOpeningTime // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantClosingTime: freezed == restaurantClosingTime
          ? _value.restaurantClosingTime
          : restaurantClosingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isSubscribed: freezed == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      stripeCustomerId: freezed == stripeCustomerId
          ? _value.stripeCustomerId
          : stripeCustomerId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeBankAccountId: freezed == stripeBankAccountId
          ? _value.stripeBankAccountId
          : stripeBankAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      signupOtp: freezed == signupOtp
          ? _value.signupOtp
          : signupOtp // ignore: cast_nullable_to_non_nullable
              as String?,
      signupOtpExpireOn: freezed == signupOtpExpireOn
          ? _value.signupOtpExpireOn
          : signupOtpExpireOn // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      socialAccount: freezed == socialAccount
          ? _value.socialAccount
          : socialAccount // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isChatRoomCreated: freezed == isChatRoomCreated
          ? _value.isChatRoomCreated
          : isChatRoomCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTelegramLinked: freezed == isTelegramLinked
          ? _value.isTelegramLinked
          : isTelegramLinked // ignore: cast_nullable_to_non_nullable
              as bool?,
      acceptsPayment: freezed == acceptsPayment
          ? _value.acceptsPayment
          : acceptsPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      zelle: freezed == zelle
          ? _value.zelle
          : zelle // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayoutsEnabled: null == isPayoutsEnabled
          ? _value.isPayoutsEnabled
          : isPayoutsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
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
      @JsonKey(name: 'isPayoutsEnabled') bool isPayoutsEnabled});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? phoneCode = freezed,
    Object? phone = freezed,
    Object? telegramId = freezed,
    Object? telegramFirstName = freezed,
    Object? telegramLastName = freezed,
    Object? telegramUserName = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
    Object? dateOfBirth = freezed,
    Object? bio = freezed,
    Object? isPhoneVerified = freezed,
    Object? isClosed = freezed,
    Object? country = freezed,
    Object? businessName = freezed,
    Object? businessDetails = freezed,
    Object? businessLocation = freezed,
    Object? isDeliveryProvided = freezed,
    Object? isPickupProvided = freezed,
    Object? registerType = freezed,
    Object? location = freezed,
    Object? deliveryFee = freezed,
    Object? maximumDeliveryRange = freezed,
    Object? freeDeliveryRange = freezed,
    Object? avgPreparationTime = freezed,
    Object? restaurantOpeningTime = freezed,
    Object? restaurantClosingTime = freezed,
    Object? isSubscribed = freezed,
    Object? stripeCustomerId = freezed,
    Object? stripeBankAccountId = freezed,
    Object? signupOtp = freezed,
    Object? signupOtpExpireOn = freezed,
    Object? deviceType = freezed,
    Object? deviceToken = freezed,
    Object? status = freezed,
    Object? isDeleted = freezed,
    Object? socialAccount = freezed,
    Object? createdAt = freezed,
    Object? isChatRoomCreated = freezed,
    Object? isTelegramLinked = freezed,
    Object? acceptsPayment = freezed,
    Object? zelle = freezed,
    Object? isPayoutsEnabled = null,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: freezed == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramId: freezed == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramFirstName: freezed == telegramFirstName
          ? _value.telegramFirstName
          : telegramFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramLastName: freezed == telegramLastName
          ? _value.telegramLastName
          : telegramLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      telegramUserName: freezed == telegramUserName
          ? _value.telegramUserName
          : telegramUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      isPhoneVerified: freezed == isPhoneVerified
          ? _value.isPhoneVerified
          : isPhoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: freezed == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessDetails: freezed == businessDetails
          ? _value.businessDetails
          : businessDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLocation: freezed == businessLocation
          ? _value.businessLocation
          : businessLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeliveryProvided: freezed == isDeliveryProvided
          ? _value.isDeliveryProvided
          : isDeliveryProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPickupProvided: freezed == isPickupProvided
          ? _value.isPickupProvided
          : isPickupProvided // ignore: cast_nullable_to_non_nullable
              as bool?,
      registerType: freezed == registerType
          ? _value.registerType
          : registerType // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      deliveryFee: freezed == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int?,
      maximumDeliveryRange: freezed == maximumDeliveryRange
          ? _value.maximumDeliveryRange
          : maximumDeliveryRange // ignore: cast_nullable_to_non_nullable
              as int?,
      freeDeliveryRange: freezed == freeDeliveryRange
          ? _value.freeDeliveryRange
          : freeDeliveryRange // ignore: cast_nullable_to_non_nullable
              as int?,
      avgPreparationTime: freezed == avgPreparationTime
          ? _value.avgPreparationTime
          : avgPreparationTime // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantOpeningTime: freezed == restaurantOpeningTime
          ? _value.restaurantOpeningTime
          : restaurantOpeningTime // ignore: cast_nullable_to_non_nullable
              as int?,
      restaurantClosingTime: freezed == restaurantClosingTime
          ? _value.restaurantClosingTime
          : restaurantClosingTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isSubscribed: freezed == isSubscribed
          ? _value.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      stripeCustomerId: freezed == stripeCustomerId
          ? _value.stripeCustomerId
          : stripeCustomerId // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeBankAccountId: freezed == stripeBankAccountId
          ? _value.stripeBankAccountId
          : stripeBankAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      signupOtp: freezed == signupOtp
          ? _value.signupOtp
          : signupOtp // ignore: cast_nullable_to_non_nullable
              as String?,
      signupOtpExpireOn: freezed == signupOtpExpireOn
          ? _value.signupOtpExpireOn
          : signupOtpExpireOn // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      socialAccount: freezed == socialAccount
          ? _value._socialAccount
          : socialAccount // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isChatRoomCreated: freezed == isChatRoomCreated
          ? _value.isChatRoomCreated
          : isChatRoomCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isTelegramLinked: freezed == isTelegramLinked
          ? _value.isTelegramLinked
          : isTelegramLinked // ignore: cast_nullable_to_non_nullable
              as bool?,
      acceptsPayment: freezed == acceptsPayment
          ? _value.acceptsPayment
          : acceptsPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      zelle: freezed == zelle
          ? _value.zelle
          : zelle // ignore: cast_nullable_to_non_nullable
              as String?,
      isPayoutsEnabled: null == isPayoutsEnabled
          ? _value.isPayoutsEnabled
          : isPayoutsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'phone_code') this.phoneCode,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'telegram_id') this.telegramId,
      @JsonKey(name: 'telegram_first_name') this.telegramFirstName,
      @JsonKey(name: 'telegram_last_name') this.telegramLastName,
      @JsonKey(name: 'telegram_user_name') this.telegramUserName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'profile_image') this.profileImage,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'isPhoneVerified') this.isPhoneVerified,
      @JsonKey(name: 'isClosed') this.isClosed,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'business_name') this.businessName,
      @JsonKey(name: 'business_details') this.businessDetails,
      @JsonKey(name: 'business_location') this.businessLocation,
      @JsonKey(name: 'isDeliveryProvided') this.isDeliveryProvided,
      @JsonKey(name: 'isPickupProvided') this.isPickupProvided,
      @JsonKey(name: 'registerType') this.registerType,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'delivery_fee') this.deliveryFee,
      @JsonKey(name: 'maximum_delivery_range') this.maximumDeliveryRange,
      @JsonKey(name: 'free_delivery_range') this.freeDeliveryRange,
      @JsonKey(name: 'avg_preparation_time') this.avgPreparationTime,
      @JsonKey(name: 'restaurant_opening_time') this.restaurantOpeningTime,
      @JsonKey(name: 'restaurant_closing_time') this.restaurantClosingTime,
      @JsonKey(name: 'isSubscribed') this.isSubscribed,
      @JsonKey(name: 'stripeCustomerId') this.stripeCustomerId,
      @JsonKey(name: 'stripeBankAccountId') this.stripeBankAccountId,
      @JsonKey(name: 'signup_otp') this.signupOtp,
      @JsonKey(name: 'signup_otp_expire_on') this.signupOtpExpireOn,
      @JsonKey(name: 'deviceType') this.deviceType,
      @JsonKey(name: 'deviceToken') this.deviceToken,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'isDeleted') this.isDeleted,
      @JsonKey(name: 'socialAccount') final List<dynamic>? socialAccount,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'isChatRoomCreated') this.isChatRoomCreated,
      @JsonKey(name: 'isTelegramLinked') this.isTelegramLinked,
      @JsonKey(name: 'accepts_payment') this.acceptsPayment,
      @JsonKey(name: 'zelle_number') this.zelle,
      @JsonKey(name: 'isPayoutsEnabled') this.isPayoutsEnabled = false})
      : _socialAccount = socialAccount;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'phone_code')
  final String? phoneCode;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'telegram_id')
  final String? telegramId;
  @override
  @JsonKey(name: 'telegram_first_name')
  final String? telegramFirstName;
  @override
  @JsonKey(name: 'telegram_last_name')
  final String? telegramLastName;
  @override
  @JsonKey(name: 'telegram_user_name')
  final String? telegramUserName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'bio')
  final String? bio;
  @override
  @JsonKey(name: 'isPhoneVerified')
  final bool? isPhoneVerified;
  @override
  @JsonKey(name: 'isClosed')
  final bool? isClosed;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'business_name')
  final String? businessName;
  @override
  @JsonKey(name: 'business_details')
  final String? businessDetails;
  @override
  @JsonKey(name: 'business_location')
  final String? businessLocation;
  @override
  @JsonKey(name: 'isDeliveryProvided')
  final bool? isDeliveryProvided;
  @override
  @JsonKey(name: 'isPickupProvided')
  final bool? isPickupProvided;
  @override
  @JsonKey(name: 'registerType')
  final String? registerType;
  @override
  @JsonKey(name: 'location')
  final Location? location;
  @override
  @JsonKey(name: 'delivery_fee')
  final int? deliveryFee;
  @override
  @JsonKey(name: 'maximum_delivery_range')
  final int? maximumDeliveryRange;
  @override
  @JsonKey(name: 'free_delivery_range')
  final int? freeDeliveryRange;
  @override
  @JsonKey(name: 'avg_preparation_time')
  final int? avgPreparationTime;
  @override
  @JsonKey(name: 'restaurant_opening_time')
  final int? restaurantOpeningTime;
  @override
  @JsonKey(name: 'restaurant_closing_time')
  final int? restaurantClosingTime;
  @override
  @JsonKey(name: 'isSubscribed')
  final bool? isSubscribed;
  @override
  @JsonKey(name: 'stripeCustomerId')
  final String? stripeCustomerId;
  @override
  @JsonKey(name: 'stripeBankAccountId')
  final String? stripeBankAccountId;
  @override
  @JsonKey(name: 'signup_otp')
  final String? signupOtp;
  @override
  @JsonKey(name: 'signup_otp_expire_on')
  final String? signupOtpExpireOn;
  @override
  @JsonKey(name: 'deviceType')
  final String? deviceType;
  @override
  @JsonKey(name: 'deviceToken')
  final String? deviceToken;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'isDeleted')
  final bool? isDeleted;
  final List<dynamic>? _socialAccount;
  @override
  @JsonKey(name: 'socialAccount')
  List<dynamic>? get socialAccount {
    final value = _socialAccount;
    if (value == null) return null;
    if (_socialAccount is EqualUnmodifiableListView) return _socialAccount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'isChatRoomCreated')
  final bool? isChatRoomCreated;
  @override
  @JsonKey(name: 'isTelegramLinked')
  final bool? isTelegramLinked;
  @override
  @JsonKey(name: 'accepts_payment')
  final String? acceptsPayment;
  @override
  @JsonKey(name: 'zelle_number')
  final String? zelle;
  @override
  @JsonKey(name: 'isPayoutsEnabled')
  final bool isPayoutsEnabled;

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, phoneCode: $phoneCode, phone: $phone, telegramId: $telegramId, telegramFirstName: $telegramFirstName, telegramLastName: $telegramLastName, telegramUserName: $telegramUserName, email: $email, profileImage: $profileImage, dateOfBirth: $dateOfBirth, bio: $bio, isPhoneVerified: $isPhoneVerified, isClosed: $isClosed, country: $country, businessName: $businessName, businessDetails: $businessDetails, businessLocation: $businessLocation, isDeliveryProvided: $isDeliveryProvided, isPickupProvided: $isPickupProvided, registerType: $registerType, location: $location, deliveryFee: $deliveryFee, maximumDeliveryRange: $maximumDeliveryRange, freeDeliveryRange: $freeDeliveryRange, avgPreparationTime: $avgPreparationTime, restaurantOpeningTime: $restaurantOpeningTime, restaurantClosingTime: $restaurantClosingTime, isSubscribed: $isSubscribed, stripeCustomerId: $stripeCustomerId, stripeBankAccountId: $stripeBankAccountId, signupOtp: $signupOtp, signupOtpExpireOn: $signupOtpExpireOn, deviceType: $deviceType, deviceToken: $deviceToken, status: $status, isDeleted: $isDeleted, socialAccount: $socialAccount, createdAt: $createdAt, isChatRoomCreated: $isChatRoomCreated, isTelegramLinked: $isTelegramLinked, acceptsPayment: $acceptsPayment, zelle: $zelle, isPayoutsEnabled: $isPayoutsEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.telegramId, telegramId) ||
                other.telegramId == telegramId) &&
            (identical(other.telegramFirstName, telegramFirstName) ||
                other.telegramFirstName == telegramFirstName) &&
            (identical(other.telegramLastName, telegramLastName) ||
                other.telegramLastName == telegramLastName) &&
            (identical(other.telegramUserName, telegramUserName) ||
                other.telegramUserName == telegramUserName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.isPhoneVerified, isPhoneVerified) ||
                other.isPhoneVerified == isPhoneVerified) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.businessDetails, businessDetails) ||
                other.businessDetails == businessDetails) &&
            (identical(other.businessLocation, businessLocation) ||
                other.businessLocation == businessLocation) &&
            (identical(other.isDeliveryProvided, isDeliveryProvided) ||
                other.isDeliveryProvided == isDeliveryProvided) &&
            (identical(other.isPickupProvided, isPickupProvided) ||
                other.isPickupProvided == isPickupProvided) &&
            (identical(other.registerType, registerType) ||
                other.registerType == registerType) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.maximumDeliveryRange, maximumDeliveryRange) ||
                other.maximumDeliveryRange == maximumDeliveryRange) &&
            (identical(other.freeDeliveryRange, freeDeliveryRange) ||
                other.freeDeliveryRange == freeDeliveryRange) &&
            (identical(other.avgPreparationTime, avgPreparationTime) ||
                other.avgPreparationTime == avgPreparationTime) &&
            (identical(other.restaurantOpeningTime, restaurantOpeningTime) ||
                other.restaurantOpeningTime == restaurantOpeningTime) &&
            (identical(other.restaurantClosingTime, restaurantClosingTime) ||
                other.restaurantClosingTime == restaurantClosingTime) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed) &&
            (identical(other.stripeCustomerId, stripeCustomerId) ||
                other.stripeCustomerId == stripeCustomerId) &&
            (identical(other.stripeBankAccountId, stripeBankAccountId) ||
                other.stripeBankAccountId == stripeBankAccountId) &&
            (identical(other.signupOtp, signupOtp) ||
                other.signupOtp == signupOtp) &&
            (identical(other.signupOtpExpireOn, signupOtpExpireOn) ||
                other.signupOtpExpireOn == signupOtpExpireOn) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality()
                .equals(other._socialAccount, _socialAccount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isChatRoomCreated, isChatRoomCreated) ||
                other.isChatRoomCreated == isChatRoomCreated) &&
            (identical(other.isTelegramLinked, isTelegramLinked) ||
                other.isTelegramLinked == isTelegramLinked) &&
            (identical(other.acceptsPayment, acceptsPayment) ||
                other.acceptsPayment == acceptsPayment) &&
            (identical(other.zelle, zelle) || other.zelle == zelle) &&
            (identical(other.isPayoutsEnabled, isPayoutsEnabled) ||
                other.isPayoutsEnabled == isPayoutsEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        firstName,
        lastName,
        fullName,
        phoneCode,
        phone,
        telegramId,
        telegramFirstName,
        telegramLastName,
        telegramUserName,
        email,
        profileImage,
        dateOfBirth,
        bio,
        isPhoneVerified,
        isClosed,
        country,
        businessName,
        businessDetails,
        businessLocation,
        isDeliveryProvided,
        isPickupProvided,
        registerType,
        location,
        deliveryFee,
        maximumDeliveryRange,
        freeDeliveryRange,
        avgPreparationTime,
        restaurantOpeningTime,
        restaurantClosingTime,
        isSubscribed,
        stripeCustomerId,
        stripeBankAccountId,
        signupOtp,
        signupOtpExpireOn,
        deviceType,
        deviceToken,
        status,
        isDeleted,
        const DeepCollectionEquality().hash(_socialAccount),
        createdAt,
        isChatRoomCreated,
        isTelegramLinked,
        acceptsPayment,
        zelle,
        isPayoutsEnabled
      ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'phone_code') final String? phoneCode,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'telegram_id') final String? telegramId,
      @JsonKey(name: 'telegram_first_name') final String? telegramFirstName,
      @JsonKey(name: 'telegram_last_name') final String? telegramLastName,
      @JsonKey(name: 'telegram_user_name') final String? telegramUserName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'profile_image') final String? profileImage,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      @JsonKey(name: 'bio') final String? bio,
      @JsonKey(name: 'isPhoneVerified') final bool? isPhoneVerified,
      @JsonKey(name: 'isClosed') final bool? isClosed,
      @JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'business_name') final String? businessName,
      @JsonKey(name: 'business_details') final String? businessDetails,
      @JsonKey(name: 'business_location') final String? businessLocation,
      @JsonKey(name: 'isDeliveryProvided') final bool? isDeliveryProvided,
      @JsonKey(name: 'isPickupProvided') final bool? isPickupProvided,
      @JsonKey(name: 'registerType') final String? registerType,
      @JsonKey(name: 'location') final Location? location,
      @JsonKey(name: 'delivery_fee') final int? deliveryFee,
      @JsonKey(name: 'maximum_delivery_range') final int? maximumDeliveryRange,
      @JsonKey(name: 'free_delivery_range') final int? freeDeliveryRange,
      @JsonKey(name: 'avg_preparation_time') final int? avgPreparationTime,
      @JsonKey(name: 'restaurant_opening_time')
      final int? restaurantOpeningTime,
      @JsonKey(name: 'restaurant_closing_time')
      final int? restaurantClosingTime,
      @JsonKey(name: 'isSubscribed') final bool? isSubscribed,
      @JsonKey(name: 'stripeCustomerId') final String? stripeCustomerId,
      @JsonKey(name: 'stripeBankAccountId') final String? stripeBankAccountId,
      @JsonKey(name: 'signup_otp') final String? signupOtp,
      @JsonKey(name: 'signup_otp_expire_on') final String? signupOtpExpireOn,
      @JsonKey(name: 'deviceType') final String? deviceType,
      @JsonKey(name: 'deviceToken') final String? deviceToken,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'isDeleted') final bool? isDeleted,
      @JsonKey(name: 'socialAccount') final List<dynamic>? socialAccount,
      @JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'isChatRoomCreated') final bool? isChatRoomCreated,
      @JsonKey(name: 'isTelegramLinked') final bool? isTelegramLinked,
      @JsonKey(name: 'accepts_payment') final String? acceptsPayment,
      @JsonKey(name: 'zelle_number') final String? zelle,
      @JsonKey(name: 'isPayoutsEnabled')
      final bool isPayoutsEnabled}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'phone_code')
  String? get phoneCode;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'telegram_id')
  String? get telegramId;
  @override
  @JsonKey(name: 'telegram_first_name')
  String? get telegramFirstName;
  @override
  @JsonKey(name: 'telegram_last_name')
  String? get telegramLastName;
  @override
  @JsonKey(name: 'telegram_user_name')
  String? get telegramUserName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'bio')
  String? get bio;
  @override
  @JsonKey(name: 'isPhoneVerified')
  bool? get isPhoneVerified;
  @override
  @JsonKey(name: 'isClosed')
  bool? get isClosed;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'business_name')
  String? get businessName;
  @override
  @JsonKey(name: 'business_details')
  String? get businessDetails;
  @override
  @JsonKey(name: 'business_location')
  String? get businessLocation;
  @override
  @JsonKey(name: 'isDeliveryProvided')
  bool? get isDeliveryProvided;
  @override
  @JsonKey(name: 'isPickupProvided')
  bool? get isPickupProvided;
  @override
  @JsonKey(name: 'registerType')
  String? get registerType;
  @override
  @JsonKey(name: 'location')
  Location? get location;
  @override
  @JsonKey(name: 'delivery_fee')
  int? get deliveryFee;
  @override
  @JsonKey(name: 'maximum_delivery_range')
  int? get maximumDeliveryRange;
  @override
  @JsonKey(name: 'free_delivery_range')
  int? get freeDeliveryRange;
  @override
  @JsonKey(name: 'avg_preparation_time')
  int? get avgPreparationTime;
  @override
  @JsonKey(name: 'restaurant_opening_time')
  int? get restaurantOpeningTime;
  @override
  @JsonKey(name: 'restaurant_closing_time')
  int? get restaurantClosingTime;
  @override
  @JsonKey(name: 'isSubscribed')
  bool? get isSubscribed;
  @override
  @JsonKey(name: 'stripeCustomerId')
  String? get stripeCustomerId;
  @override
  @JsonKey(name: 'stripeBankAccountId')
  String? get stripeBankAccountId;
  @override
  @JsonKey(name: 'signup_otp')
  String? get signupOtp;
  @override
  @JsonKey(name: 'signup_otp_expire_on')
  String? get signupOtpExpireOn;
  @override
  @JsonKey(name: 'deviceType')
  String? get deviceType;
  @override
  @JsonKey(name: 'deviceToken')
  String? get deviceToken;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'isDeleted')
  bool? get isDeleted;
  @override
  @JsonKey(name: 'socialAccount')
  List<dynamic>? get socialAccount;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'isChatRoomCreated')
  bool? get isChatRoomCreated;
  @override
  @JsonKey(name: 'isTelegramLinked')
  bool? get isTelegramLinked;
  @override
  @JsonKey(name: 'accepts_payment')
  String? get acceptsPayment;
  @override
  @JsonKey(name: 'zelle_number')
  String? get zelle;
  @override
  @JsonKey(name: 'isPayoutsEnabled')
  bool get isPayoutsEnabled;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinates')
  List<double>? get coordinates => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'coordinates') List<double>? coordinates});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'coordinates') List<double>? coordinates});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$LocationImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'coordinates') final List<double>? coordinates})
      : _coordinates = coordinates;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  final List<double>? _coordinates;
  @override
  @JsonKey(name: 'coordinates')
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Location(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
          {@JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'coordinates') final List<double>? coordinates}) =
      _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'coordinates')
  List<double>? get coordinates;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
