// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatusersModel _$ChatusersModelFromJson(Map<String, dynamic> json) {
  return _ChatusersModel.fromJson(json);
}

/// @nodoc
mixin _$ChatusersModel {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ChatusersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatusersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatusersModelCopyWith<ChatusersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatusersModelCopyWith<$Res> {
  factory $ChatusersModelCopyWith(
          ChatusersModel value, $Res Function(ChatusersModel) then) =
      _$ChatusersModelCopyWithImpl<$Res, ChatusersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'createdAt') String? createdAt});
}

/// @nodoc
class _$ChatusersModelCopyWithImpl<$Res, $Val extends ChatusersModel>
    implements $ChatusersModelCopyWith<$Res> {
  _$ChatusersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatusersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatusersModelImplCopyWith<$Res>
    implements $ChatusersModelCopyWith<$Res> {
  factory _$$ChatusersModelImplCopyWith(_$ChatusersModelImpl value,
          $Res Function(_$ChatusersModelImpl) then) =
      __$$ChatusersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'createdAt') String? createdAt});
}

/// @nodoc
class __$$ChatusersModelImplCopyWithImpl<$Res>
    extends _$ChatusersModelCopyWithImpl<$Res, _$ChatusersModelImpl>
    implements _$$ChatusersModelImplCopyWith<$Res> {
  __$$ChatusersModelImplCopyWithImpl(
      _$ChatusersModelImpl _value, $Res Function(_$ChatusersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatusersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? displayName = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ChatusersModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatusersModelImpl implements _ChatusersModel {
  const _$ChatusersModelImpl(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'displayName') this.displayName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'createdAt') this.createdAt});

  factory _$ChatusersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatusersModelImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @override
  String toString() {
    return 'ChatusersModel(userId: $userId, displayName: $displayName, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatusersModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, displayName, email, createdAt);

  /// Create a copy of ChatusersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatusersModelImplCopyWith<_$ChatusersModelImpl> get copyWith =>
      __$$ChatusersModelImplCopyWithImpl<_$ChatusersModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatusersModelImplToJson(
      this,
    );
  }
}

abstract class _ChatusersModel implements ChatusersModel {
  const factory _ChatusersModel(
          {@JsonKey(name: 'userId') final String? userId,
          @JsonKey(name: 'displayName') final String? displayName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'createdAt') final String? createdAt}) =
      _$ChatusersModelImpl;

  factory _ChatusersModel.fromJson(Map<String, dynamic> json) =
      _$ChatusersModelImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;

  /// Create a copy of ChatusersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatusersModelImplCopyWith<_$ChatusersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
