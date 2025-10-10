// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliderimage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SliderImageModel _$SliderImageModelFromJson(Map<String, dynamic> json) {
  return _SliderImageModel.fromJson(json);
}

/// @nodoc
mixin _$SliderImageModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this SliderImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderImageModelCopyWith<SliderImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderImageModelCopyWith<$Res> {
  factory $SliderImageModelCopyWith(
          SliderImageModel value, $Res Function(SliderImageModel) then) =
      _$SliderImageModelCopyWithImpl<$Res, SliderImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$SliderImageModelCopyWithImpl<$Res, $Val extends SliderImageModel>
    implements $SliderImageModelCopyWith<$Res> {
  _$SliderImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderImageModelImplCopyWith<$Res>
    implements $SliderImageModelCopyWith<$Res> {
  factory _$$SliderImageModelImplCopyWith(_$SliderImageModelImpl value,
          $Res Function(_$SliderImageModelImpl) then) =
      __$$SliderImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$SliderImageModelImplCopyWithImpl<$Res>
    extends _$SliderImageModelCopyWithImpl<$Res, _$SliderImageModelImpl>
    implements _$$SliderImageModelImplCopyWith<$Res> {
  __$$SliderImageModelImplCopyWithImpl(_$SliderImageModelImpl _value,
      $Res Function(_$SliderImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SliderImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$SliderImageModelImpl implements _SliderImageModel {
  const _$SliderImageModelImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'image') this.image});

  factory _$SliderImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderImageModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'SliderImageModel(id: $id, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderImageModelImplCopyWith<_$SliderImageModelImpl> get copyWith =>
      __$$SliderImageModelImplCopyWithImpl<_$SliderImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderImageModelImplToJson(
      this,
    );
  }
}

abstract class _SliderImageModel implements SliderImageModel {
  const factory _SliderImageModel(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'image') final String? image}) = _$SliderImageModelImpl;

  factory _SliderImageModel.fromJson(Map<String, dynamic> json) =
      _$SliderImageModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'image')
  String? get image;

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderImageModelImplCopyWith<_$SliderImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
