// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popularitems_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PopularitemsModel _$PopularitemsModelFromJson(Map<String, dynamic> json) {
  return _PopularitemsModel.fromJson(json);
}

/// @nodoc
mixin _$PopularitemsModel {
  @JsonKey(name: 'imagePath')
  String? get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitle')
  String? get subtitle => throw _privateConstructorUsedError;

  /// Serializes this PopularitemsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PopularitemsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopularitemsModelCopyWith<PopularitemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularitemsModelCopyWith<$Res> {
  factory $PopularitemsModelCopyWith(
          PopularitemsModel value, $Res Function(PopularitemsModel) then) =
      _$PopularitemsModelCopyWithImpl<$Res, PopularitemsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'subtitle') String? subtitle});
}

/// @nodoc
class _$PopularitemsModelCopyWithImpl<$Res, $Val extends PopularitemsModel>
    implements $PopularitemsModelCopyWith<$Res> {
  _$PopularitemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopularitemsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularitemsModelImplCopyWith<$Res>
    implements $PopularitemsModelCopyWith<$Res> {
  factory _$$PopularitemsModelImplCopyWith(_$PopularitemsModelImpl value,
          $Res Function(_$PopularitemsModelImpl) then) =
      __$$PopularitemsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String? imagePath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'subtitle') String? subtitle});
}

/// @nodoc
class __$$PopularitemsModelImplCopyWithImpl<$Res>
    extends _$PopularitemsModelCopyWithImpl<$Res, _$PopularitemsModelImpl>
    implements _$$PopularitemsModelImplCopyWith<$Res> {
  __$$PopularitemsModelImplCopyWithImpl(_$PopularitemsModelImpl _value,
      $Res Function(_$PopularitemsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PopularitemsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_$PopularitemsModelImpl(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularitemsModelImpl implements _PopularitemsModel {
  const _$PopularitemsModelImpl(
      {@JsonKey(name: 'imagePath') this.imagePath,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'subtitle') this.subtitle});

  factory _$PopularitemsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularitemsModelImplFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String? imagePath;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'subtitle')
  final String? subtitle;

  @override
  String toString() {
    return 'PopularitemsModel(imagePath: $imagePath, title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularitemsModelImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, title, subtitle);

  /// Create a copy of PopularitemsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularitemsModelImplCopyWith<_$PopularitemsModelImpl> get copyWith =>
      __$$PopularitemsModelImplCopyWithImpl<_$PopularitemsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularitemsModelImplToJson(
      this,
    );
  }
}

abstract class _PopularitemsModel implements PopularitemsModel {
  const factory _PopularitemsModel(
          {@JsonKey(name: 'imagePath') final String? imagePath,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'subtitle') final String? subtitle}) =
      _$PopularitemsModelImpl;

  factory _PopularitemsModel.fromJson(Map<String, dynamic> json) =
      _$PopularitemsModelImpl.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String? get imagePath;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'subtitle')
  String? get subtitle;

  /// Create a copy of PopularitemsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopularitemsModelImplCopyWith<_$PopularitemsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
