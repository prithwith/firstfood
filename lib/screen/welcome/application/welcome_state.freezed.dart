// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WelcomeState {
// UserModel? user,
  bool get isStartGmailLoading => throw _privateConstructorUsedError;
  bool get isFacebookLoading => throw _privateConstructorUsedError;
  bool get isGoogleLoading => throw _privateConstructorUsedError;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WelcomeStateCopyWith<WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res, WelcomeState>;
  @useResult
  $Res call(
      {bool isStartGmailLoading, bool isFacebookLoading, bool isGoogleLoading});
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res, $Val extends WelcomeState>
    implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStartGmailLoading = null,
    Object? isFacebookLoading = null,
    Object? isGoogleLoading = null,
  }) {
    return _then(_value.copyWith(
      isStartGmailLoading: null == isStartGmailLoading
          ? _value.isStartGmailLoading
          : isStartGmailLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFacebookLoading: null == isFacebookLoading
          ? _value.isFacebookLoading
          : isFacebookLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelcomeStateImplCopyWith<$Res>
    implements $WelcomeStateCopyWith<$Res> {
  factory _$$WelcomeStateImplCopyWith(
          _$WelcomeStateImpl value, $Res Function(_$WelcomeStateImpl) then) =
      __$$WelcomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isStartGmailLoading, bool isFacebookLoading, bool isGoogleLoading});
}

/// @nodoc
class __$$WelcomeStateImplCopyWithImpl<$Res>
    extends _$WelcomeStateCopyWithImpl<$Res, _$WelcomeStateImpl>
    implements _$$WelcomeStateImplCopyWith<$Res> {
  __$$WelcomeStateImplCopyWithImpl(
      _$WelcomeStateImpl _value, $Res Function(_$WelcomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStartGmailLoading = null,
    Object? isFacebookLoading = null,
    Object? isGoogleLoading = null,
  }) {
    return _then(_$WelcomeStateImpl(
      isStartGmailLoading: null == isStartGmailLoading
          ? _value.isStartGmailLoading
          : isStartGmailLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFacebookLoading: null == isFacebookLoading
          ? _value.isFacebookLoading
          : isFacebookLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WelcomeStateImpl extends _WelcomeState {
  const _$WelcomeStateImpl(
      {this.isStartGmailLoading = false,
      this.isFacebookLoading = false,
      this.isGoogleLoading = false})
      : super._();

// UserModel? user,
  @override
  @JsonKey()
  final bool isStartGmailLoading;
  @override
  @JsonKey()
  final bool isFacebookLoading;
  @override
  @JsonKey()
  final bool isGoogleLoading;

  @override
  String toString() {
    return 'WelcomeState(isStartGmailLoading: $isStartGmailLoading, isFacebookLoading: $isFacebookLoading, isGoogleLoading: $isGoogleLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeStateImpl &&
            (identical(other.isStartGmailLoading, isStartGmailLoading) ||
                other.isStartGmailLoading == isStartGmailLoading) &&
            (identical(other.isFacebookLoading, isFacebookLoading) ||
                other.isFacebookLoading == isFacebookLoading) &&
            (identical(other.isGoogleLoading, isGoogleLoading) ||
                other.isGoogleLoading == isGoogleLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isStartGmailLoading, isFacebookLoading, isGoogleLoading);

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
      __$$WelcomeStateImplCopyWithImpl<_$WelcomeStateImpl>(this, _$identity);
}

abstract class _WelcomeState extends WelcomeState {
  const factory _WelcomeState(
      {final bool isStartGmailLoading,
      final bool isFacebookLoading,
      final bool isGoogleLoading}) = _$WelcomeStateImpl;
  const _WelcomeState._() : super._();

// UserModel? user,
  @override
  bool get isStartGmailLoading;
  @override
  bool get isFacebookLoading;
  @override
  bool get isGoogleLoading;

  /// Create a copy of WelcomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
