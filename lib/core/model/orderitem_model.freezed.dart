// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderitem_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderitemModel _$OrderitemModelFromJson(Map<String, dynamic> json) {
  return _OrderitemModel.fromJson(json);
}

/// @nodoc
mixin _$OrderitemModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'extras')
  String? get extras => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  String? get quantity => throw _privateConstructorUsedError;

  /// Serializes this OrderitemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderitemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderitemModelCopyWith<OrderitemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderitemModelCopyWith<$Res> {
  factory $OrderitemModelCopyWith(
          OrderitemModel value, $Res Function(OrderitemModel) then) =
      _$OrderitemModelCopyWithImpl<$Res, OrderitemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'extras') String? extras,
      @JsonKey(name: 'quantity') String? quantity});
}

/// @nodoc
class _$OrderitemModelCopyWithImpl<$Res, $Val extends OrderitemModel>
    implements $OrderitemModelCopyWith<$Res> {
  _$OrderitemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderitemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? extras = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      extras: freezed == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderitemModelImplCopyWith<$Res>
    implements $OrderitemModelCopyWith<$Res> {
  factory _$$OrderitemModelImplCopyWith(_$OrderitemModelImpl value,
          $Res Function(_$OrderitemModelImpl) then) =
      __$$OrderitemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'extras') String? extras,
      @JsonKey(name: 'quantity') String? quantity});
}

/// @nodoc
class __$$OrderitemModelImplCopyWithImpl<$Res>
    extends _$OrderitemModelCopyWithImpl<$Res, _$OrderitemModelImpl>
    implements _$$OrderitemModelImplCopyWith<$Res> {
  __$$OrderitemModelImplCopyWithImpl(
      _$OrderitemModelImpl _value, $Res Function(_$OrderitemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderitemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? extras = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$OrderitemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      extras: freezed == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderitemModelImpl implements _OrderitemModel {
  const _$OrderitemModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'extras') this.extras,
      @JsonKey(name: 'quantity') this.quantity});

  factory _$OrderitemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderitemModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'extras')
  final String? extras;
  @override
  @JsonKey(name: 'quantity')
  final String? quantity;

  @override
  String toString() {
    return 'OrderitemModel(id: $id, price: $price, image: $image, title: $title, extras: $extras, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderitemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.extras, extras) || other.extras == extras) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, price, image, title, extras, quantity);

  /// Create a copy of OrderitemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderitemModelImplCopyWith<_$OrderitemModelImpl> get copyWith =>
      __$$OrderitemModelImplCopyWithImpl<_$OrderitemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderitemModelImplToJson(
      this,
    );
  }
}

abstract class _OrderitemModel implements OrderitemModel {
  const factory _OrderitemModel(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'price') final String? price,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'extras') final String? extras,
          @JsonKey(name: 'quantity') final String? quantity}) =
      _$OrderitemModelImpl;

  factory _OrderitemModel.fromJson(Map<String, dynamic> json) =
      _$OrderitemModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'extras')
  String? get extras;
  @override
  @JsonKey(name: 'quantity')
  String? get quantity;

  /// Create a copy of OrderitemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderitemModelImplCopyWith<_$OrderitemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
