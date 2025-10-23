// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textimageai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextimageaiModel _$TextimageaiModelFromJson(Map<String, dynamic> json) {
  return _TextimageaiModel.fromJson(json);
}

/// @nodoc
mixin _$TextimageaiModel {
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextimageaiModelCopyWith<TextimageaiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextimageaiModelCopyWith<$Res> {
  factory $TextimageaiModelCopyWith(
          TextimageaiModel value, $Res Function(TextimageaiModel) then) =
      _$TextimageaiModelCopyWithImpl<$Res, TextimageaiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class _$TextimageaiModelCopyWithImpl<$Res, $Val extends TextimageaiModel>
    implements $TextimageaiModelCopyWith<$Res> {
  _$TextimageaiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextimageaiModelImplCopyWith<$Res>
    implements $TextimageaiModelCopyWith<$Res> {
  factory _$$TextimageaiModelImplCopyWith(_$TextimageaiModelImpl value,
          $Res Function(_$TextimageaiModelImpl) then) =
      __$$TextimageaiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'image') String? image});
}

/// @nodoc
class __$$TextimageaiModelImplCopyWithImpl<$Res>
    extends _$TextimageaiModelCopyWithImpl<$Res, _$TextimageaiModelImpl>
    implements _$$TextimageaiModelImplCopyWith<$Res> {
  __$$TextimageaiModelImplCopyWithImpl(_$TextimageaiModelImpl _value,
      $Res Function(_$TextimageaiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_$TextimageaiModelImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
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
class _$TextimageaiModelImpl implements _TextimageaiModel {
  const _$TextimageaiModelImpl(
      {@JsonKey(name: 'role') this.role,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'image') this.image});

  factory _$TextimageaiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextimageaiModelImplFromJson(json);

  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'image')
  final String? image;

  @override
  String toString() {
    return 'TextimageaiModel(role: $role, text: $text, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextimageaiModelImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, text, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextimageaiModelImplCopyWith<_$TextimageaiModelImpl> get copyWith =>
      __$$TextimageaiModelImplCopyWithImpl<_$TextimageaiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextimageaiModelImplToJson(
      this,
    );
  }
}

abstract class _TextimageaiModel implements TextimageaiModel {
  const factory _TextimageaiModel(
      {@JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'image') final String? image}) = _$TextimageaiModelImpl;

  factory _TextimageaiModel.fromJson(Map<String, dynamic> json) =
      _$TextimageaiModelImpl.fromJson;

  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$TextimageaiModelImplCopyWith<_$TextimageaiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
