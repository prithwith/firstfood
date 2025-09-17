// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverState {
// UserModel? user,
  bool get isdiscoverLoading => throw _privateConstructorUsedError;
  List<dynamic> get sliderList => throw _privateConstructorUsedError;
  List<dynamic> get fastDeliveryList => throw _privateConstructorUsedError;
  List<dynamic> get popularItemsList => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call(
      {bool isdiscoverLoading,
      List<dynamic> sliderList,
      List<dynamic> fastDeliveryList,
      List<dynamic> popularItemsList,
      int currentIndex});
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isdiscoverLoading = null,
    Object? sliderList = null,
    Object? fastDeliveryList = null,
    Object? popularItemsList = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      isdiscoverLoading: null == isdiscoverLoading
          ? _value.isdiscoverLoading
          : isdiscoverLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sliderList: null == sliderList
          ? _value.sliderList
          : sliderList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      fastDeliveryList: null == fastDeliveryList
          ? _value.fastDeliveryList
          : fastDeliveryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      popularItemsList: null == popularItemsList
          ? _value.popularItemsList
          : popularItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverStateImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$DiscoverStateImplCopyWith(
          _$DiscoverStateImpl value, $Res Function(_$DiscoverStateImpl) then) =
      __$$DiscoverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isdiscoverLoading,
      List<dynamic> sliderList,
      List<dynamic> fastDeliveryList,
      List<dynamic> popularItemsList,
      int currentIndex});
}

/// @nodoc
class __$$DiscoverStateImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateImpl>
    implements _$$DiscoverStateImplCopyWith<$Res> {
  __$$DiscoverStateImplCopyWithImpl(
      _$DiscoverStateImpl _value, $Res Function(_$DiscoverStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isdiscoverLoading = null,
    Object? sliderList = null,
    Object? fastDeliveryList = null,
    Object? popularItemsList = null,
    Object? currentIndex = null,
  }) {
    return _then(_$DiscoverStateImpl(
      isdiscoverLoading: null == isdiscoverLoading
          ? _value.isdiscoverLoading
          : isdiscoverLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sliderList: null == sliderList
          ? _value._sliderList
          : sliderList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      fastDeliveryList: null == fastDeliveryList
          ? _value._fastDeliveryList
          : fastDeliveryList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      popularItemsList: null == popularItemsList
          ? _value._popularItemsList
          : popularItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DiscoverStateImpl extends _DiscoverState {
  const _$DiscoverStateImpl(
      {this.isdiscoverLoading = false,
      final List<dynamic> sliderList = const [],
      final List<dynamic> fastDeliveryList = const [],
      final List<dynamic> popularItemsList = const [],
      this.currentIndex = 0})
      : _sliderList = sliderList,
        _fastDeliveryList = fastDeliveryList,
        _popularItemsList = popularItemsList,
        super._();

// UserModel? user,
  @override
  @JsonKey()
  final bool isdiscoverLoading;
  final List<dynamic> _sliderList;
  @override
  @JsonKey()
  List<dynamic> get sliderList {
    if (_sliderList is EqualUnmodifiableListView) return _sliderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliderList);
  }

  final List<dynamic> _fastDeliveryList;
  @override
  @JsonKey()
  List<dynamic> get fastDeliveryList {
    if (_fastDeliveryList is EqualUnmodifiableListView)
      return _fastDeliveryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fastDeliveryList);
  }

  final List<dynamic> _popularItemsList;
  @override
  @JsonKey()
  List<dynamic> get popularItemsList {
    if (_popularItemsList is EqualUnmodifiableListView)
      return _popularItemsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularItemsList);
  }

  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'DiscoverState(isdiscoverLoading: $isdiscoverLoading, sliderList: $sliderList, fastDeliveryList: $fastDeliveryList, popularItemsList: $popularItemsList, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateImpl &&
            (identical(other.isdiscoverLoading, isdiscoverLoading) ||
                other.isdiscoverLoading == isdiscoverLoading) &&
            const DeepCollectionEquality()
                .equals(other._sliderList, _sliderList) &&
            const DeepCollectionEquality()
                .equals(other._fastDeliveryList, _fastDeliveryList) &&
            const DeepCollectionEquality()
                .equals(other._popularItemsList, _popularItemsList) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isdiscoverLoading,
      const DeepCollectionEquality().hash(_sliderList),
      const DeepCollectionEquality().hash(_fastDeliveryList),
      const DeepCollectionEquality().hash(_popularItemsList),
      currentIndex);

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      __$$DiscoverStateImplCopyWithImpl<_$DiscoverStateImpl>(this, _$identity);
}

abstract class _DiscoverState extends DiscoverState {
  const factory _DiscoverState(
      {final bool isdiscoverLoading,
      final List<dynamic> sliderList,
      final List<dynamic> fastDeliveryList,
      final List<dynamic> popularItemsList,
      final int currentIndex}) = _$DiscoverStateImpl;
  const _DiscoverState._() : super._();

// UserModel? user,
  @override
  bool get isdiscoverLoading;
  @override
  List<dynamic> get sliderList;
  @override
  List<dynamic> get fastDeliveryList;
  @override
  List<dynamic> get popularItemsList;
  @override
  int get currentIndex;

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
