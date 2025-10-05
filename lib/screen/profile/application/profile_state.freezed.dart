// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  List<AddressModel> get addressList => throw _privateConstructorUsedError;
  bool get isAddressLoading => throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({List<AddressModel> addressList, bool isAddressLoading});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
    Object? isAddressLoading = null,
  }) {
    return _then(_value.copyWith(
      addressList: null == addressList
          ? _value.addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      isAddressLoading: null == isAddressLoading
          ? _value.isAddressLoading
          : isAddressLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddressModel> addressList, bool isAddressLoading});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressList = null,
    Object? isAddressLoading = null,
  }) {
    return _then(_$ProfileStateImpl(
      addressList: null == addressList
          ? _value._addressList
          : addressList // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      isAddressLoading: null == isAddressLoading
          ? _value.isAddressLoading
          : isAddressLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl extends _ProfileState {
  const _$ProfileStateImpl(
      {final List<AddressModel> addressList = const [],
      this.isAddressLoading = false})
      : _addressList = addressList,
        super._();

  final List<AddressModel> _addressList;
  @override
  @JsonKey()
  List<AddressModel> get addressList {
    if (_addressList is EqualUnmodifiableListView) return _addressList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressList);
  }

  @override
  @JsonKey()
  final bool isAddressLoading;

  @override
  String toString() {
    return 'ProfileState(addressList: $addressList, isAddressLoading: $isAddressLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            const DeepCollectionEquality()
                .equals(other._addressList, _addressList) &&
            (identical(other.isAddressLoading, isAddressLoading) ||
                other.isAddressLoading == isAddressLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_addressList), isAddressLoading);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  const factory _ProfileState(
      {final List<AddressModel> addressList,
      final bool isAddressLoading}) = _$ProfileStateImpl;
  const _ProfileState._() : super._();

  @override
  List<AddressModel> get addressList;
  @override
  bool get isAddressLoading;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
