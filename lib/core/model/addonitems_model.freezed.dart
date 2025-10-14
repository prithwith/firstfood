// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addonitems_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddOnItemsModel _$AddOnItemsModelFromJson(Map<String, dynamic> json) {
  return _AddOnItemsModel.fromJson(json);
}

/// @nodoc
mixin _$AddOnItemsModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddOnItemsModelCopyWith<AddOnItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOnItemsModelCopyWith<$Res> {
  factory $AddOnItemsModelCopyWith(
          AddOnItemsModel value, $Res Function(AddOnItemsModel) then) =
      _$AddOnItemsModelCopyWithImpl<$Res, AddOnItemsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$AddOnItemsModelCopyWithImpl<$Res, $Val extends AddOnItemsModel>
    implements $AddOnItemsModelCopyWith<$Res> {
  _$AddOnItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddOnItemsModelImplCopyWith<$Res>
    implements $AddOnItemsModelCopyWith<$Res> {
  factory _$$AddOnItemsModelImplCopyWith(_$AddOnItemsModelImpl value,
          $Res Function(_$AddOnItemsModelImpl) then) =
      __$$AddOnItemsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$AddOnItemsModelImplCopyWithImpl<$Res>
    extends _$AddOnItemsModelCopyWithImpl<$Res, _$AddOnItemsModelImpl>
    implements _$$AddOnItemsModelImplCopyWith<$Res> {
  __$$AddOnItemsModelImplCopyWithImpl(
      _$AddOnItemsModelImpl _value, $Res Function(_$AddOnItemsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
  }) {
    return _then(_$AddOnItemsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddOnItemsModelImpl implements _AddOnItemsModel {
  const _$AddOnItemsModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'image') this.image});

  factory _$AddOnItemsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddOnItemsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'AddOnItemsModel(id: $id, title: $title, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOnItemsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOnItemsModelImplCopyWith<_$AddOnItemsModelImpl> get copyWith =>
      __$$AddOnItemsModelImplCopyWithImpl<_$AddOnItemsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddOnItemsModelImplToJson(
      this,
    );
  }
}

abstract class _AddOnItemsModel implements AddOnItemsModel {
  const factory _AddOnItemsModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'price') final String? price,
      @JsonKey(name: 'image') final String? image}) = _$AddOnItemsModelImpl;

  factory _AddOnItemsModel.fromJson(Map<String, dynamic> json) =
      _$AddOnItemsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$AddOnItemsModelImplCopyWith<_$AddOnItemsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
