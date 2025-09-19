// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fooditems_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FooditemsModel _$FooditemsModelFromJson(Map<String, dynamic> json) {
  return _FooditemsModel.fromJson(json);
}

/// @nodoc
mixin _$FooditemsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitle')
  String? get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurant')
  String? get restaurant => throw _privateConstructorUsedError;
  @JsonKey(name: 'priceLevel')
  String? get priceLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'isLiked')
  bool? get isLiked => throw _privateConstructorUsedError;

  /// Serializes this FooditemsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FooditemsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FooditemsModelCopyWith<FooditemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooditemsModelCopyWith<$Res> {
  factory $FooditemsModelCopyWith(
          FooditemsModel value, $Res Function(FooditemsModel) then) =
      _$FooditemsModelCopyWithImpl<$Res, FooditemsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'subtitle') String? subtitle,
      @JsonKey(name: 'restaurant') String? restaurant,
      @JsonKey(name: 'priceLevel') String? priceLevel,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'rating') String? rating,
      @JsonKey(name: 'isLiked') bool? isLiked});
}

/// @nodoc
class _$FooditemsModelCopyWithImpl<$Res, $Val extends FooditemsModel>
    implements $FooditemsModelCopyWith<$Res> {
  _$FooditemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FooditemsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? restaurant = freezed,
    Object? priceLevel = freezed,
    Object? time = freezed,
    Object? rating = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String?,
      priceLevel: freezed == priceLevel
          ? _value.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FooditemsModelImplCopyWith<$Res>
    implements $FooditemsModelCopyWith<$Res> {
  factory _$$FooditemsModelImplCopyWith(_$FooditemsModelImpl value,
          $Res Function(_$FooditemsModelImpl) then) =
      __$$FooditemsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'subtitle') String? subtitle,
      @JsonKey(name: 'restaurant') String? restaurant,
      @JsonKey(name: 'priceLevel') String? priceLevel,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'rating') String? rating,
      @JsonKey(name: 'isLiked') bool? isLiked});
}

/// @nodoc
class __$$FooditemsModelImplCopyWithImpl<$Res>
    extends _$FooditemsModelCopyWithImpl<$Res, _$FooditemsModelImpl>
    implements _$$FooditemsModelImplCopyWith<$Res> {
  __$$FooditemsModelImplCopyWithImpl(
      _$FooditemsModelImpl _value, $Res Function(_$FooditemsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FooditemsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? restaurant = freezed,
    Object? priceLevel = freezed,
    Object? time = freezed,
    Object? rating = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_$FooditemsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as String?,
      priceLevel: freezed == priceLevel
          ? _value.priceLevel
          : priceLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FooditemsModelImpl implements _FooditemsModel {
  const _$FooditemsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'subtitle') this.subtitle,
      @JsonKey(name: 'restaurant') this.restaurant,
      @JsonKey(name: 'priceLevel') this.priceLevel,
      @JsonKey(name: 'time') this.time,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'isLiked') this.isLiked});

  factory _$FooditemsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooditemsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'subtitle')
  final String? subtitle;
  @override
  @JsonKey(name: 'restaurant')
  final String? restaurant;
  @override
  @JsonKey(name: 'priceLevel')
  final String? priceLevel;
  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'rating')
  final String? rating;
  @override
  @JsonKey(name: 'isLiked')
  final bool? isLiked;

  @override
  String toString() {
    return 'FooditemsModel(id: $id, image: $image, title: $title, subtitle: $subtitle, restaurant: $restaurant, priceLevel: $priceLevel, time: $time, rating: $rating, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooditemsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.priceLevel, priceLevel) ||
                other.priceLevel == priceLevel) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, title, subtitle,
      restaurant, priceLevel, time, rating, isLiked);

  /// Create a copy of FooditemsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FooditemsModelImplCopyWith<_$FooditemsModelImpl> get copyWith =>
      __$$FooditemsModelImplCopyWithImpl<_$FooditemsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooditemsModelImplToJson(
      this,
    );
  }
}

abstract class _FooditemsModel implements FooditemsModel {
  const factory _FooditemsModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'subtitle') final String? subtitle,
      @JsonKey(name: 'restaurant') final String? restaurant,
      @JsonKey(name: 'priceLevel') final String? priceLevel,
      @JsonKey(name: 'time') final String? time,
      @JsonKey(name: 'rating') final String? rating,
      @JsonKey(name: 'isLiked') final bool? isLiked}) = _$FooditemsModelImpl;

  factory _FooditemsModel.fromJson(Map<String, dynamic> json) =
      _$FooditemsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'subtitle')
  String? get subtitle;
  @override
  @JsonKey(name: 'restaurant')
  String? get restaurant;
  @override
  @JsonKey(name: 'priceLevel')
  String? get priceLevel;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'rating')
  String? get rating;
  @override
  @JsonKey(name: 'isLiked')
  bool? get isLiked;

  /// Create a copy of FooditemsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FooditemsModelImplCopyWith<_$FooditemsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
