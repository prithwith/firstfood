// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'textai_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextaiModel _$TextaiModelFromJson(Map<String, dynamic> json) {
  return _TextaiModel.fromJson(json);
}

/// @nodoc
mixin _$TextaiModel {
// @JsonKey(name: 'id') String? id,
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextaiModelCopyWith<TextaiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextaiModelCopyWith<$Res> {
  factory $TextaiModelCopyWith(
          TextaiModel value, $Res Function(TextaiModel) then) =
      _$TextaiModelCopyWithImpl<$Res, TextaiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'text') String? text});
}

/// @nodoc
class _$TextaiModelCopyWithImpl<$Res, $Val extends TextaiModel>
    implements $TextaiModelCopyWith<$Res> {
  _$TextaiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? text = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextaiModelImplCopyWith<$Res>
    implements $TextaiModelCopyWith<$Res> {
  factory _$$TextaiModelImplCopyWith(
          _$TextaiModelImpl value, $Res Function(_$TextaiModelImpl) then) =
      __$$TextaiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'role') String? role,
      @JsonKey(name: 'text') String? text});
}

/// @nodoc
class __$$TextaiModelImplCopyWithImpl<$Res>
    extends _$TextaiModelCopyWithImpl<$Res, _$TextaiModelImpl>
    implements _$$TextaiModelImplCopyWith<$Res> {
  __$$TextaiModelImplCopyWithImpl(
      _$TextaiModelImpl _value, $Res Function(_$TextaiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? text = freezed,
  }) {
    return _then(_$TextaiModelImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextaiModelImpl implements _TextaiModel {
  const _$TextaiModelImpl(
      {@JsonKey(name: 'role') this.role, @JsonKey(name: 'text') this.text});

  factory _$TextaiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextaiModelImplFromJson(json);

// @JsonKey(name: 'id') String? id,
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'text')
  final String? text;

  @override
  String toString() {
    return 'TextaiModel(role: $role, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextaiModelImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextaiModelImplCopyWith<_$TextaiModelImpl> get copyWith =>
      __$$TextaiModelImplCopyWithImpl<_$TextaiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextaiModelImplToJson(
      this,
    );
  }
}

abstract class _TextaiModel implements TextaiModel {
  const factory _TextaiModel(
      {@JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'text') final String? text}) = _$TextaiModelImpl;

  factory _TextaiModel.fromJson(Map<String, dynamic> json) =
      _$TextaiModelImpl.fromJson;

  @override // @JsonKey(name: 'id') String? id,
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$TextaiModelImplCopyWith<_$TextaiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
